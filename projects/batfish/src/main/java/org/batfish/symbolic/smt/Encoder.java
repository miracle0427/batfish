package org.batfish.symbolic.smt;

import com.microsoft.z3.ArithExpr;
import com.microsoft.z3.BitVecExpr;
import com.microsoft.z3.BoolExpr;
import com.microsoft.z3.Context;
import com.microsoft.z3.Expr;
import com.microsoft.z3.Model;
import com.microsoft.z3.Optimize;
import com.microsoft.z3.Solver;
import com.microsoft.z3.Sort;
import com.microsoft.z3.Status;
import com.microsoft.z3.Symbol;
import com.microsoft.z3.Tactic;
import java.util.Arrays;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Objects;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import javax.annotation.Nullable;
import org.batfish.common.BatfishException;
import org.batfish.common.Pair;
import org.batfish.common.plugin.IBatfish;
import org.batfish.config.Settings;
import org.batfish.datamodel.BgpNeighbor;
import org.batfish.datamodel.HeaderSpace;
import org.batfish.datamodel.Interface;
import org.batfish.datamodel.Ip;
import org.batfish.datamodel.IpProtocol;
import org.batfish.datamodel.IpWildcard;
import org.batfish.datamodel.Prefix;
import org.batfish.datamodel.SubRange;
import org.batfish.datamodel.questions.smt.HeaderQuestion;
import org.batfish.symbolic.CommunityVar;
import org.batfish.symbolic.Graph;
import org.batfish.symbolic.GraphEdge;
import org.batfish.symbolic.OspfType;
import org.batfish.symbolic.Protocol;
import org.batfish.symbolic.utils.Tuple;

/**
 * A class responsible for building a symbolic encoding of the entire network. The encoder does this
 * by maintaining a collection of encoding slices, where each slice encodes the forwarding behavior
 * for a particular packet. >
 *
 * <p>The encoder object is architected this way to allow for modeling of features such as iBGP or
 * non-local next-hop ip addresses in static routes, where the forwarding behavior of one packet
 * depends on that of other packets.
 *
 * <p>Symbolic variables that are common to all slices are maintained in this class. That includes,
 * for example, the collection of variables representing topology failures.
 *
 * @author Ryan Beckett
 */
public class Encoder {

  static final Boolean ENABLE_DEBUGGING = false;
  static final String MAIN_SLICE_NAME = "SLICE-MAIN_";
  private static final boolean ENABLE_UNSAT_CORE = false;
  private int _encodingId;
  public String _encId;

  private boolean _modelIgp;

  private HeaderQuestion _question;

  private Map<String, EncoderSlice> _slices;

  private Map<String, Map<String, BoolExpr>> _sliceReachability;

  private Encoder _previousEncoder;

  private SymbolicFailures _symbolicFailures;

  private Map<String, Expr> _allVariables;

  private Graph _graph;

  private Context _ctx;

  private Solver _solver;

  private UnsatCore _unsatCore;

  private Settings _settings;

  public IpWildcard _srcIp;
  
  public IpWildcard _dstIp;

  public Map<IpWildcard, Encoder> _dstEncoders;

  public Map<String, Set<BoolExpr>> _dataforward;

  public Map<Integer, BoolExpr> _aclTemp;

  public Map<Integer, BoolExpr> _bgpTemp;

  public Map<IpWildcard, Map<IpWildcard, Encoder>> _tcEncoders;

  public boolean _dstEncoderExists;

  public boolean _tcEncoderExists;

  public BoolExpr _modelAnd;

  public BoolExpr _propertRep;

  public Map<String, Integer> _weightMap;

  public Map<String, BoolExpr> _routerConsMap;

  public int _repairObjective = 0;

  public int _isBool = 0;

  public Map<String, Map<String, Map<String, Map<String, Map<String, BoolExpr>>>>> _abstractTree;

  private List<Symbol> _allFailList;
  /**
   * @archie created this variable. optsolve will use same constraints as solver, but can support soft
   * constraints
   */
  private Optimize _optsolve;


  //public Map<String, Map<String, String>> _abstractTree;
  /**
   * Create an encoder object that will consider all packets in the provided headerspace.
   *
   * @param settings The Batfish configuration settings object
   * @param graph The network graph
   */
  Encoder(Settings settings, Graph graph, HeaderQuestion q) {
    this(settings, null, graph, q, null, null, null, 0);
  }

  /**
   * Create an encoder object from an existing encoder.
   *
   * @param e An existing encoder object
   * @param g An existing network graph
   */
  Encoder(Encoder e, Graph g) {
    this(
        e._settings,
        e,
        g,
        e._question,
        e.getCtx(),
        e.getSolver(),
        e.getAllVariables(),
        e.getId() + 1);
  }

  /**
   * Create an encoder object from an existing encoder.
   *
   * @param e An existing encoder object
   * @param g An existing network graph
   * @param q A header question
   */
  Encoder(Encoder e, Graph g, HeaderQuestion q) {
    this(e._settings, e, g, q, e.getCtx(), e.getSolver(), e.getAllVariables(), e.getId() + 1);
  }


  /**
   * Create an encoder object that will consider all packets in the provided headerspace.
   *
   * @param graph The network graph
   * @param q A header question
   * @param src source ip used to create encoder
   * @param dst destination ip used to create encoder
   */
  Encoder(Graph graph, HeaderQuestion q, IpWildcard src, IpWildcard dst) {
    this(null, graph, q, null, null, null, 0, src, dst);
  }


  /**
   * Create an encoder object from an existing encoder.
   *
   * @param e An existing encoder object
   * @param g An existing network graph
   * @param q A header question
   * @param src source ip used to create encoder
   * @param dst destination ip used to create encoder
   */
  Encoder(Encoder e, Graph g, HeaderQuestion q, IpWildcard src, IpWildcard dst) {
    this(e, g, q, e.getCtx(), e.getSolver(), e.getAllVariables(), e.getId() + 1,
     src, dst);
  }


  /**
   * Create an encoder object while possibly reusing the partial encoding of another encoder. mkIf
   * the context and solver are null, then a new encoder is created. Otherwise the old encoder is
   * used.
   */
  private Encoder(
      @Nullable Encoder enc,
      Graph graph,
      HeaderQuestion q,
      @Nullable Context ctx,
      @Nullable Solver solver,
      @Nullable Map<String, Expr> vars,
      int id,
      IpWildcard src,
      IpWildcard dst) {
    _graph = graph;
    _previousEncoder = enc;
    _modelIgp = true;
    _encodingId = id;
    _encId = "_enc_" + Integer.toString(id);
    _question = q;
    _slices = new HashMap<>();
    _sliceReachability = new HashMap<>();
    _srcIp = src;
    _dstIp = dst;

    HashMap<String, String> cfg = new HashMap<>();

    if (enc == null) {
      _dstEncoders =  new HashMap<>();
      _tcEncoders =  new HashMap<>();
      _dataforward = new HashMap<>();
      _aclTemp = new HashMap<>(); 
      _bgpTemp = new HashMap<>(); 
      _abstractTree = new HashMap<>();
    } else {
      _dstEncoders = enc._dstEncoders;
      _tcEncoders = enc._tcEncoders;
      _dataforward = enc._dataforward;
      _aclTemp = enc._aclTemp;
      _bgpTemp = enc._bgpTemp;
      _abstractTree = enc._abstractTree;
    }

    _dstEncoderExists = _dstEncoders.containsKey(dst);
    _tcEncoderExists = false;

    if (_dstEncoderExists) {
      _tcEncoderExists = _tcEncoders.get(dst).containsKey(src);
    }

    // allows for unsat core when debugging
    if (ENABLE_UNSAT_CORE) {
      cfg.put("proof", "true");
      cfg.put("auto-config", "false");
    }

    _ctx = (ctx == null ? new Context(cfg) : ctx);

    _optsolve = _ctx.mkOptimize(); 

    if (solver == null) {
      if (ENABLE_UNSAT_CORE) {
        _solver = _ctx.mkSolver();
      } else {
        Tactic t1 = _ctx.mkTactic("simplify");
        Tactic t2 = _ctx.mkTactic("propagate-values");
        Tactic t3 = _ctx.mkTactic("solve-eqs");
        Tactic t4 = _ctx.mkTactic("bit-blast");
        Tactic t5 = _ctx.mkTactic("smt");
        Tactic t = _ctx.then(t1, t2, t3, t4, t5);
        _solver = _ctx.mkSolver(t);
        // System.out.println("Help: \n" + _solver.getHelp());
      }
    } else {
      _solver = solver;
    }

    _symbolicFailures = new SymbolicFailures(this._ctx);

    if (vars == null) {
      _modelAnd = mkTrue();
      _allVariables = new HashMap<>();
      setWeights();
    } else {
      _allVariables = vars;
      _optsolve = enc.getOptimize();
      _solver = enc.getSolver();
      _modelAnd = enc.getModelAnd();
      _routerConsMap = enc._routerConsMap;
      _weightMap = enc._weightMap;
      _abstractTree = enc._abstractTree;
      _routerConsMap = enc._routerConsMap;
      _repairObjective = enc._repairObjective;
      _isBool = enc._isBool;
    }

    if (ENABLE_DEBUGGING) {
      System.out.println(graph);
    }

    _unsatCore = new UnsatCore(ENABLE_UNSAT_CORE);

    if (id == 0 || !_tcEncoderExists) {
      initFailedLinkVariables();
    } else {
      _symbolicFailures = enc.getSymbolicFailures();
    }
    modInitSlices(_question.getHeaderSpace(), graph);
    if (id == 0 || !_tcEncoderExists) {
      trackFailVars();
    }
  }



  /**
   * Create an encoder object while possibly reusing the partial encoding of another encoder. If the
   * context and solver are null, then a new encoder is created. Otherwise the old encoder is used.
   */
  private Encoder(
      Settings settings,
      @Nullable Encoder enc,
      Graph graph,
      HeaderQuestion q,
      @Nullable Context ctx,
      @Nullable Solver solver,
      @Nullable Map<String, Expr> vars,
      int id) {
    _settings = settings;
    _graph = graph;
    _previousEncoder = enc;
    _modelIgp = true;
    _encodingId = id;
    _encId = "_enc_" + Integer.toString(id);
    _question = q;
    _slices = new HashMap<>();
    _sliceReachability = new HashMap<>();
    HashMap<String, String> cfg = new HashMap<>();
    /*
    if (_question.getHeaderSpace().getSrcIps() != null) {
      _srcIp = _question.getHeaderSpace().getSrcIps().iterator().next();
    }
    if (_question.getHeaderSpace().getDstIps() != null) {
      _dstIp = _question.getHeaderSpace().getDstIps().iterator().next();
    }*/

    if (enc == null) {
      _dstEncoders =  new HashMap<>();
      _tcEncoders =  new HashMap<>();
      _dataforward = new HashMap<>();
      _aclTemp = new HashMap<>();
      _bgpTemp = new HashMap<>();
      _abstractTree = new HashMap<>();
    } else {
      _dstEncoders = enc._dstEncoders;
      _tcEncoders = enc._tcEncoders;
      _dataforward = enc._dataforward;
      _aclTemp = enc._aclTemp;
      _bgpTemp = enc._bgpTemp;
      _abstractTree = enc._abstractTree;
    }

    _dstEncoderExists = _dstEncoders.containsKey(_dstIp);
    _tcEncoderExists = false;

    if (_dstEncoderExists) {
      _tcEncoderExists = _tcEncoders.get(_dstIp).containsKey(_srcIp);
    }


    // allows for unsat core when debugging
    if (ENABLE_UNSAT_CORE) {
      cfg.put("proof", "true");
      cfg.put("auto-config", "false");
    }

    cfg.put("timeout", String.valueOf(_settings.getZ3timeout()));

    _ctx = (ctx == null ? new Context(cfg) : ctx);

    _optsolve = _ctx.mkOptimize(); 

    if (solver == null) {
      if (ENABLE_UNSAT_CORE) {
        _solver = _ctx.mkSolver();
      } else {
        Tactic t1 = _ctx.mkTactic("simplify");
        Tactic t2 = _ctx.mkTactic("propagate-values");
        Tactic t3 = _ctx.mkTactic("solve-eqs");
        Tactic t4 = _ctx.mkTactic("bit-blast");
        Tactic t5 = _ctx.mkTactic("smt");
        Tactic t = _ctx.then(t1, t2, t3, t4, t5);
        _solver = _ctx.mkSolver(t);
        // System.out.println("Help: \n" + _solver.getHelp());
      }
    } else {
      _solver = solver;
    }

    _symbolicFailures = new SymbolicFailures(this._ctx);

    if (vars == null) {
      _allVariables = new HashMap<>();
      _modelAnd = mkTrue();
      setWeights();
    } else {
      _allVariables = vars;
      _optsolve = enc.getOptimize();
      _solver = enc.getSolver();
      _modelAnd = enc.getModelAnd();
      _routerConsMap = enc._routerConsMap;
      _weightMap = enc._weightMap;
      _abstractTree = enc._abstractTree;
      _routerConsMap = enc._routerConsMap;
      _repairObjective = enc._repairObjective;
      _isBool = enc._isBool;
    }

    if (ENABLE_DEBUGGING) {
      System.out.println(graph);
    }

    _unsatCore = new UnsatCore(ENABLE_UNSAT_CORE);

    initFailedLinkVariables();
    initSlices(_question.getHeaderSpace(), graph);
    trackFailVars();
  }

  /*
   * Return Source and destination Ip used to create this encoder
   */
  IpWildcard getSrcIp() {
    return _srcIp;
  } 

  IpWildcard getDstIp() {
    return _dstIp;
  } 


  public void setWeights() {
    _routerConsMap = new HashMap<> ();
    for (Entry<String, Set<String>> entry : _graph.getNeighbors().entrySet()) {
      String router = entry.getKey();
      _routerConsMap.put(router, mkTrue());
    }

    _weightMap = new HashMap<> ();
    try {
      String weightPath = "weights.txt";
      String objPath = "obj.txt";
      String isBoolPath = "isbool.txt";
      String line;
      File f = new File(weightPath);
      if(f.exists() && !f.isDirectory()) { 
        //System.out.println("\nRead weights.txt\n");
        BufferedReader reader = new BufferedReader(new FileReader(weightPath));
        while((line = reader.readLine()) != null) {
          String[] split = line.split(" ");
          String s1 = split[0];
          int s2 = Integer.parseInt(split[1]);
          _weightMap.put(s1, s2);
        }
        reader.close();
      }

      f = new File(objPath);
      if(f.exists() && !f.isDirectory()) { 
        //System.out.println("\nRead obj.txt\n");
        BufferedReader reader = new BufferedReader(new FileReader(objPath));
        while((line = reader.readLine()) != null) {
          String[] split = line.split(" ");
          int s1 = Integer.parseInt(split[0]);
          _repairObjective = s1;
        }
        reader.close();
      }

      f = new File(isBoolPath);
      if(f.exists() && !f.isDirectory()) { 
        //System.out.println("\nRead obj.txt\n");
        BufferedReader reader = new BufferedReader(new FileReader(isBoolPath));
        while((line = reader.readLine()) != null) {
          String[] split = line.split(" ");
          int s1 = Integer.parseInt(split[0]);
          _isBool = s1;
        }
        reader.close();
      }

    } catch (IOException e) {
      System.out.println("Error in reading weights and objective");
    }
  }

  /*
   * Initialize symbolic variables to represent link failures.
   */
  private void initFailedLinkVariables() {
    for (List<GraphEdge> edges : _graph.getEdgeMap().values()) {
      for (GraphEdge ge : edges) {
        if (ge.getPeer() == null) {
          Interface i = ge.getStart();
          String name = getId() + "_FAILED-EDGE_" + ge.getRouter() + "_" + i.getName();
          ArithExpr var = getCtx().mkIntConst(name);
          _symbolicFailures.getFailedEdgeLinks().put(ge, var);
          _allVariables.put(var.toString() + getStringId(), var);
        }
      }
    }

    for (Entry<String, Set<String>> entry : _graph.getNeighbors().entrySet()) {
      String router = entry.getKey();
      Set<String> peers = entry.getValue();
      for (String peer : peers) {
        // sort names for unique
        String pair = (router.compareTo(peer) < 0 ? router + "_" + peer : peer + "_" + router);
        String name = getId() + "_FAILED-EDGE_" + pair;
        ArithExpr var = _ctx.mkIntConst(name);
        _symbolicFailures.getFailedInternalLinks().put(router, peer, var);
        _allVariables.put(var.toString() + getStringId(), var);
      }
    }
  }

  private void trackFailVars() {
    _allFailList = new ArrayList<>();
    Set<String> existAlready = new HashSet<>();
    for (List<GraphEdge> edges : _graph.getEdgeMap().values()) {
      for (GraphEdge ge : edges) {
        if (ge.getPeer() == null) {
          Interface i = ge.getStart();
          String name = getId() + "_FAILED-EDGE_" + ge.getRouter() + "_" + i.getName();
          if (!existAlready.contains(name)) {
            Symbol temp = getCtx().mkSymbol(name);
            _allFailList.add(temp); 
            existAlready.add(name);
          }
        }
      }
    }
    for (Entry<String, Set<String>> entry : _graph.getNeighbors().entrySet()) {
      String router = entry.getKey();
      Set<String> peers = entry.getValue();
      for (String peer : peers) {
        // sort names for unique
        String pair = (router.compareTo(peer) < 0 ? router + "_" + peer : peer + "_" + router);
        String name = getId() + "_FAILED-EDGE_" + pair;
        if (!existAlready.contains(name)) {
          Symbol temp = getCtx().mkSymbol(name);
          _allFailList.add(temp); 
          existAlready.add(name);
        }
      }
    }
  }

  /*
   * Modified Initialize encoding slice.
   */
  private void modInitSlices(HeaderSpace h, Graph g) {
    if (_tcEncoderExists) {
        Encoder copy = _tcEncoders.get(_dstIp).get(_srcIp);
        _slices = copy.getSlices();
        _sliceReachability = copy.getSliceReachability();
    } else {
      if (!_dstEncoderExists) {
        if (g.getIbgpNeighbors().isEmpty() || !_modelIgp) {
          _slices.put(MAIN_SLICE_NAME, new EncoderSlice(this, h, g, ""));
        } else {
          _slices.put(MAIN_SLICE_NAME, new EncoderSlice(this, h, g, MAIN_SLICE_NAME));
        }
      } else {
        if (g.getIbgpNeighbors().isEmpty() || !_modelIgp) {
          _slices.put(MAIN_SLICE_NAME, new EncoderSlice(this, h, g, "",
           _dstEncoders.get(_dstIp).getMainSlice() ));
        } else {
          _slices.put(MAIN_SLICE_NAME, new EncoderSlice(this, h, g, MAIN_SLICE_NAME,
           _dstEncoders.get(_dstIp).getMainSlice() ));
        }        
      }
    }


    if (_modelIgp) {
      SortedSet<Pair<String, Ip>> ibgpRouters = new TreeSet<>();

      for (Entry<GraphEdge, BgpNeighbor> entry : g.getIbgpNeighbors().entrySet()) {
        GraphEdge ge = entry.getKey();
        BgpNeighbor n = entry.getValue();
        String router = ge.getRouter();
        Ip ip = n.getLocalIp();
        Pair<String, Ip> pair = new Pair<>(router, ip);

        // Add one slice per (router, source ip) pair
        if (!ibgpRouters.contains(pair)) {

          ibgpRouters.add(pair);

          // Create a control plane slice only for this ip
          HeaderSpace hs = new HeaderSpace();

          // Make sure messages are sent to this destination IP
          SortedSet<IpWildcard> ips = new TreeSet<>();
          ips.add(new IpWildcard(n.getLocalIp()));
          hs.setDstIps(ips);

          // Make sure messages use TCP port 179
          SortedSet<SubRange> dstPorts = new TreeSet<>();
          dstPorts.add(new SubRange(179, 179));
          hs.setDstPorts(dstPorts);

          // Make sure messages use the TCP protocol
          SortedSet<IpProtocol> protocols = new TreeSet<>();
          protocols.add(IpProtocol.TCP);
          hs.setIpProtocols(protocols);

          // TODO: create domains once
          Graph gNew = new Graph(g.getBatfish(), null, g.getDomain(router));
          String sliceName = "SLICE-" + router + "_";
          EncoderSlice slice = new EncoderSlice(this, hs, gNew, sliceName);
          _slices.put(sliceName, slice);

          PropertyAdder pa = new PropertyAdder(slice);
          Map<String, BoolExpr> reachVars = pa.instrumentReachability(router);
          _sliceReachability.put(router, reachVars);
        }
      }
    }
  }

  /*
   * Initialize each encoding slice.
   * For iBGP, we also add reachability information for each pair of neighbors,
   * to determine if messages sent to/from a neighbor will arrive.
   */
  private void initSlices(HeaderSpace h, Graph g) {
    if (g.getIbgpNeighbors().isEmpty() || !_modelIgp) {
      _slices.put(MAIN_SLICE_NAME, new EncoderSlice(this, h, g, ""));
    } else {
      _slices.put(MAIN_SLICE_NAME, new EncoderSlice(this, h, g, MAIN_SLICE_NAME));
    }

    if (_modelIgp) {
      SortedSet<Pair<String, Ip>> ibgpRouters = new TreeSet<>();

      for (Entry<GraphEdge, BgpNeighbor> entry : g.getIbgpNeighbors().entrySet()) {
        GraphEdge ge = entry.getKey();
        BgpNeighbor n = entry.getValue();
        String router = ge.getRouter();
        Ip ip = n.getLocalIp();
        Pair<String, Ip> pair = new Pair<>(router, ip);

        // Add one slice per (router, source ip) pair
        if (!ibgpRouters.contains(pair)) {

          ibgpRouters.add(pair);

          // Create a control plane slice only for this ip
          HeaderSpace hs = new HeaderSpace();

          // Make sure messages are sent to this destination IP
          SortedSet<IpWildcard> ips = new TreeSet<>();
          ips.add(new IpWildcard(n.getLocalIp()));
          hs.setDstIps(ips);

          // Make sure messages use TCP port 179
          SortedSet<SubRange> dstPorts = new TreeSet<>();
          dstPorts.add(new SubRange(179, 179));
          hs.setDstPorts(dstPorts);

          // Make sure messages use the TCP protocol
          SortedSet<IpProtocol> protocols = new TreeSet<>();
          protocols.add(IpProtocol.TCP);
          hs.setIpProtocols(protocols);

          // TODO: create domains once
          Graph gNew = new Graph(g.getBatfish(), null, g.getDomain(router));
          String sliceName = "SLICE-" + router + "_";
          EncoderSlice slice = new EncoderSlice(this, hs, gNew, sliceName);
          _slices.put(sliceName, slice);

          PropertyAdder pa = new PropertyAdder(slice);
          Map<String, BoolExpr> reachVars = pa.instrumentReachability(router);
          _sliceReachability.put(router, reachVars);
        }
      }
    }
  }

  // Create a symbolic boolean
  BoolExpr mkBool(boolean val) {
    return getCtx().mkBool(val);
  }

  // Symbolic boolean negation
  BoolExpr mkNot(BoolExpr e) {
    return getCtx().mkNot(e);
  }

  // Symbolic boolean disjunction
  BoolExpr mkOr(BoolExpr... vals) {
    return getCtx().mkOr(Arrays.stream(vals).filter(Objects::nonNull).toArray(BoolExpr[]::new));
  }

  // Symbolic boolean implication
  BoolExpr mkImplies(BoolExpr e1, BoolExpr e2) {
    return getCtx().mkImplies(e1, e2);
  }

  // Symbolic boolean conjunction
  BoolExpr mkAnd(BoolExpr... vals) {
    return getCtx().mkAnd(Arrays.stream(vals).filter(Objects::nonNull).toArray(BoolExpr[]::new));
  }

  // Symbolic true value
  BoolExpr mkTrue() {
    return getCtx().mkBool(true);
  }

  // Symbolic false value
  BoolExpr mkFalse() {
    return getCtx().mkBool(false);
  }

  // Symbolic arithmetic less than
  BoolExpr mkLt(Expr e1, Expr e2) {
    if (e1 instanceof BoolExpr && e2 instanceof BoolExpr) {
      return mkAnd((BoolExpr) e2, mkNot((BoolExpr) e1));
    }
    if (e1 instanceof ArithExpr && e2 instanceof ArithExpr) {
      return getCtx().mkLt((ArithExpr) e1, (ArithExpr) e2);
    }
    if (e1 instanceof BitVecExpr && e2 instanceof BitVecExpr) {
      return getCtx().mkBVULT((BitVecExpr) e1, (BitVecExpr) e2);
    }
    throw new BatfishException("Invalid call to mkLt while encoding control plane");
  }

  // Symbolic greater than
  BoolExpr mkGt(Expr e1, Expr e2) {
    if (e1 instanceof BoolExpr && e2 instanceof BoolExpr) {
      return mkAnd((BoolExpr) e1, mkNot((BoolExpr) e2));
    }
    if (e1 instanceof ArithExpr && e2 instanceof ArithExpr) {
      return getCtx().mkGt((ArithExpr) e1, (ArithExpr) e2);
    }
    if (e1 instanceof BitVecExpr && e2 instanceof BitVecExpr) {
      return getCtx().mkBVUGT((BitVecExpr) e1, (BitVecExpr) e2);
    }
    throw new BatfishException("Invalid call the mkLe while encoding control plane");
  }

  // Symbolic arithmetic subtraction
  ArithExpr mkSub(ArithExpr e1, ArithExpr e2) {
    return getCtx().mkSub(e1, e2);
  }

  // Symbolic if-then-else for booleans
  BoolExpr mkIf(BoolExpr cond, BoolExpr case1, BoolExpr case2) {
    return (BoolExpr) getCtx().mkITE(cond, case1, case2);
  }

  // Symbolic if-then-else for arithmetic
  ArithExpr mkIf(BoolExpr cond, ArithExpr case1, ArithExpr case2) {
    return (ArithExpr) getCtx().mkITE(cond, case1, case2);
  }

  // Create a symbolic integer
  ArithExpr mkInt(long l) {
    return getCtx().mkInt(l);
  }

  // Symbolic arithmetic addition
  ArithExpr mkSum(ArithExpr e1, ArithExpr e2) {
    return getCtx().mkAdd(e1, e2);
  }

  // Symbolic greater than or equal to
  BoolExpr mkGe(Expr e1, Expr e2) {
    if (e1 instanceof ArithExpr && e2 instanceof ArithExpr) {
      return getCtx().mkGe((ArithExpr) e1, (ArithExpr) e2);
    }
    if (e1 instanceof BitVecExpr && e2 instanceof BitVecExpr) {
      return getCtx().mkBVUGE((BitVecExpr) e1, (BitVecExpr) e2);
    }
    throw new BatfishException("Invalid call to mkGe while encoding control plane");
  }

  // Symbolic less than or equal to
  BoolExpr mkLe(Expr e1, Expr e2) {
    if (e1 instanceof ArithExpr && e2 instanceof ArithExpr) {
      return getCtx().mkLe((ArithExpr) e1, (ArithExpr) e2);
    }
    if (e1 instanceof BitVecExpr && e2 instanceof BitVecExpr) {
      return getCtx().mkBVULE((BitVecExpr) e1, (BitVecExpr) e2);
    }
    throw new BatfishException("Invalid call to mkLe while encoding control plane");
  }

  // Symblic equality of expressions
  BoolExpr mkEq(Expr e1, Expr e2) {
    return getCtx().mkEq(e1, e2);
  }

  // Add a boolean variable to the model
  void add(BoolExpr e) {
    _unsatCore.track(_solver, _ctx, e);
    // @archie added the optsolve add code to add things to optimiser in addition to solver
    if (_question.getFailures() == 0) {
      _optsolve.Add(e);  
    } else {
      _modelAnd = mkAnd(_modelAnd, e);
    }
  }

  // Add soft constraint to the model 
  void addSoft(BoolExpr e, int weight, String name) { 
    _optsolve.AssertSoft(e, weight, "a");
  }  

  /*
   * Adds the constraint that at most k links have failed.
   * This is done in two steps. First we ensure that each link
   * variable is constrained to take on a value between 0 and 1:
   *
   * 0 <= link_i <= 1
   *
   * Then we ensure that the sum of all links is never more than k:
   *
   * link_1 + link_2 + ... + link_n <= k
   */
  private void addFailedConstraints(int k) {
    Set<ArithExpr> vars = new HashSet<>();
    getSymbolicFailures().getFailedInternalLinks().forEach((router, peer, var) -> vars.add(var));
    getSymbolicFailures().getFailedEdgeLinks().forEach((ge, var) -> vars.add(var));

    ArithExpr sum = mkInt(0);
    for (ArithExpr var : vars) {
      sum = mkSum(sum, var);
      add(mkGe(var, mkInt(0)));
      add(mkLe(var, mkInt(1)));
    }
    if (k == 0) {
      for (ArithExpr var : vars) {
        add(mkEq(var, mkInt(0)));
      }
    } else {
      add(mkLe(sum, mkInt(k)));
    }
  }

  /*
   * Check if a community value should be displayed to the human
   */
  private boolean displayCommunity(CommunityVar cvar) {
    if (cvar.getType() == CommunityVar.Type.OTHER) {
      return false;
    }
    if (cvar.getType() == CommunityVar.Type.EXACT) {
      return true;
    }
    return true;
  }

  /*
   * Add the relevant variables in the counterexample to
   * display to the user in a human-readable fashion
   */
  private void buildCounterExample(
      Encoder enc,
      Model m,
      SortedMap<String, String> model,
      SortedMap<String, String> packetModel,
      SortedSet<String> fwdModel,
      SortedMap<String, SortedMap<String, String>> envModel,
      SortedSet<String> failures) {
    SortedMap<Expr, String> valuation = new TreeMap<>();

    // If user asks for the full model
    for (Entry<String, Expr> entry : _allVariables.entrySet()) {
      String name = entry.getKey();
      Expr e = entry.getValue();
      Expr val = m.evaluate(e, true);
      if (!val.equals(e)) {
        String s = val.toString();
        if (_question.getFullModel()) {
          model.put(name, s);
        }
        valuation.put(e, s);
      }
    }

    // Packet model
    SymbolicPacket p = enc.getMainSlice().getSymbolicPacket();
    String dstIp = valuation.get(p.getDstIp());
    String srcIp = valuation.get(p.getSrcIp());
    String dstPt = valuation.get(p.getDstPort());
    String srcPt = valuation.get(p.getSrcPort());
    String icmpCode = valuation.get(p.getIcmpCode());
    String icmpType = valuation.get(p.getIcmpType());
    String ipProtocol = valuation.get(p.getIpProtocol());
    String tcpAck = valuation.get(p.getTcpAck());
    String tcpCwr = valuation.get(p.getTcpCwr());
    String tcpEce = valuation.get(p.getTcpEce());
    String tcpFin = valuation.get(p.getTcpFin());
    String tcpPsh = valuation.get(p.getTcpPsh());
    String tcpRst = valuation.get(p.getTcpRst());
    String tcpSyn = valuation.get(p.getTcpSyn());
    String tcpUrg = valuation.get(p.getTcpUrg());

    Ip dip = new Ip(Long.parseLong(dstIp));
    Ip sip = new Ip(Long.parseLong(srcIp));

    packetModel.put("dstIp", dip.toString());

    if (sip.asLong() != 0) {
      packetModel.put("srcIp", sip.toString());
    }
    if (dstPt != null && !dstPt.equals("0")) {
      packetModel.put("dstPort", dstPt);
    }
    if (srcPt != null && !srcPt.equals("0")) {
      packetModel.put("srcPort", srcPt);
    }
    if (icmpCode != null && !icmpCode.equals("0")) {
      packetModel.put("icmpCode", icmpCode);
    }
    if (icmpType != null && !icmpType.equals("0")) {
      packetModel.put("icmpType", icmpType);
    }
    if (ipProtocol != null && !ipProtocol.equals("0")) {
      Integer number = Integer.parseInt(ipProtocol);
      IpProtocol proto = IpProtocol.fromNumber(number);
      packetModel.put("protocol", proto.toString());
    }
    if ("true".equals(tcpAck)) {
      packetModel.put("tcpAck", "set");
    }
    if ("true".equals(tcpCwr)) {
      packetModel.put("tcpCwr", "set");
    }
    if ("true".equals(tcpEce)) {
      packetModel.put("tcpEce", "set");
    }
    if ("true".equals(tcpFin)) {
      packetModel.put("tcpFin", "set");
    }
    if ("true".equals(tcpPsh)) {
      packetModel.put("tcpPsh", "set");
    }
    if ("true".equals(tcpRst)) {
      packetModel.put("tcpRst", "set");
    }
    if ("true".equals(tcpSyn)) {
      packetModel.put("tcpSyn", "set");
    }
    if ("true".equals(tcpUrg)) {
      packetModel.put("tcpUrg", "set");
    }

    for (EncoderSlice slice : enc.getSlices().values()) {
      for (Entry<LogicalEdge, SymbolicRoute> entry2 :
          slice.getLogicalGraph().getEnvironmentVars().entrySet()) {
        LogicalEdge lge = entry2.getKey();
        SymbolicRoute r = entry2.getValue();
        if ("true".equals(valuation.get(r.getPermitted()))) {
          SortedMap<String, String> recordMap = new TreeMap<>();
          GraphEdge ge = lge.getEdge();
          String nodeIface = ge.getRouter() + "," + ge.getStart().getName() + " (BGP)";
          envModel.put(nodeIface, recordMap);
          if (r.getPrefixLength() != null) {
            String x = valuation.get(r.getPrefixLength());
            if (x != null) {
              int len = Integer.parseInt(x);
              Prefix p1 = new Prefix(dip, len);
              recordMap.put("prefix", p1.toString());
            }
          }
          if (r.getAdminDist() != null) {
            String x = valuation.get(r.getAdminDist());
            if (x != null) {
              recordMap.put("admin distance", x);
            }
          }
          if (r.getLocalPref() != null) {
            String x = valuation.get(r.getLocalPref());
            if (x != null) {
              recordMap.put("local preference", x);
            }
          }
          if (r.getMetric() != null) {
            String x = valuation.get(r.getMetric());
            if (x != null) {
              recordMap.put("protocol metric", x);
            }
          }
          if (r.getMed() != null) {
            String x = valuation.get(r.getMed());
            if (x != null) {
              recordMap.put("multi-exit disc.", valuation.get(r.getMed()));
            }
          }
          if (r.getOspfArea() != null && r.getOspfArea().getBitVec() != null) {
            String x = valuation.get(r.getOspfArea().getBitVec());
            if (x != null) {
              Integer i = Integer.parseInt(x);
              Long area = r.getOspfArea().value(i);
              recordMap.put("OSPF Area", area.toString());
            }
          }
          if (r.getOspfType() != null && r.getOspfType().getBitVec() != null) {
            String x = valuation.get(r.getOspfType().getBitVec());
            if (x != null) {
              Integer i = Integer.parseInt(x);
              OspfType type = r.getOspfType().value(i);
              recordMap.put("OSPF Type", type.toString());
            }
          }

          for (Entry<CommunityVar, BoolExpr> entry3 : r.getCommunities().entrySet()) {
            CommunityVar cvar = entry3.getKey();
            BoolExpr e = entry3.getValue();
            String c = valuation.get(e);
            // TODO: what about OTHER type?
            if ("true".equals(c) && displayCommunity(cvar)) {
              String s = cvar.getValue();
              String t = slice.getNamedCommunities().get(cvar.getValue());
              s = (t == null ? s : t);
              recordMap.put("community " + s, "");
            }
          }
        }
      }
    }

    // Forwarding Model
    enc.getMainSlice()
        .getSymbolicDecisions()
        .getDataForwarding()
        .forEach(
            (router, edge, e) -> {
              String s = valuation.get(e);
              if ("true".equals(s)) {
                SymbolicRoute r =
                    enc.getMainSlice().getSymbolicDecisions().getBestNeighbor().get(router);
                if (r.getProtocolHistory() != null) {
                  Protocol proto;
                  List<Protocol> allProtocols = enc.getMainSlice().getProtocols().get(router);
                  if (allProtocols.size() == 1) {
                    proto = allProtocols.get(0);
                  } else {
                    s = valuation.get(r.getProtocolHistory().getBitVec());
                    int i = Integer.parseInt(s);
                    proto = r.getProtocolHistory().value(i);
                  }
                  fwdModel.add(edge + " (" + proto.name() + ")");
                } else {
                  fwdModel.add(edge.toString());
                }
              }
            });

    _symbolicFailures
        .getFailedInternalLinks()
        .forEach(
            (x, y, e) -> {
              String s = valuation.get(e);
              if ("1".equals(s)) {
                String pair = (x.compareTo(y) < 0 ? x + "," + y : y + "," + x);
                failures.add("link(" + pair + ")");
              }
            });

    _symbolicFailures
        .getFailedEdgeLinks()
        .forEach(
            (ge, e) -> {
              String s = valuation.get(e);
              if ("1".equals(s)) {
                failures.add("link(" + ge.getRouter() + "," + ge.getStart().getName() + ")");
              }
            });
  }

  /*
   * Generate a blocking clause for the encoding that says that one
   * of the environments that was true before must now be false.
   */
  private BoolExpr environmentBlockingClause(Model m) {
    BoolExpr acc1 = mkFalse();
    BoolExpr acc2 = mkTrue();

    // Disable an environment edge if possible
    Map<LogicalEdge, SymbolicRoute> map = getMainSlice().getLogicalGraph().getEnvironmentVars();
    for (Map.Entry<LogicalEdge, SymbolicRoute> entry : map.entrySet()) {
      SymbolicRoute record = entry.getValue();
      BoolExpr per = record.getPermitted();
      Expr x = m.evaluate(per, false);
      if (x.toString().equals("true")) {
        acc1 = mkOr(acc1, mkNot(per));
      } else {
        acc2 = mkAnd(acc2, mkNot(per));
      }
    }

    // Disable a community value if possible
    for (Map.Entry<LogicalEdge, SymbolicRoute> entry : map.entrySet()) {
      SymbolicRoute record = entry.getValue();
      for (Map.Entry<CommunityVar, BoolExpr> centry : record.getCommunities().entrySet()) {
        BoolExpr comm = centry.getValue();
        Expr x = m.evaluate(comm, false);
        if (x.toString().equals("true")) {
          acc1 = mkOr(acc1, mkNot(comm));
        } else {
          acc2 = mkAnd(acc2, mkNot(comm));
        }
      }
    }

    return mkAnd(acc1, acc2);
  }

  void setIfReq() {
    if (_question.getFailures() != 0) {
      //_optsolve.Add(_modelAnd);
      EncoderSlice mainSlice = _slices.get(MAIN_SLICE_NAME);
      Map<Symbol, Integer> _allBVValues = mainSlice.getAllBVValuesMap();
      /*
      Set<BoolExpr> boollist = _slices.get(MAIN_SLICE_NAME).getAllBoolVars();
      Set<ArithExpr> arithlist = _slices.get(MAIN_SLICE_NAME).getAllArithVars();
      Set<BitVecExpr> _bvlist = _slices.get(MAIN_SLICE_NAME).getAllBVVars();
      Map<Symbol, Integer> _allBVValues = mainSlice.getAllBVValues();
      */
      List<Symbol> boollist = _slices.get(MAIN_SLICE_NAME).getAllBoolVarsList();
      List<Symbol> arithlist = _slices.get(MAIN_SLICE_NAME).getAllArithVarsList();
      List<Symbol> bvlist = _slices.get(MAIN_SLICE_NAME).getAllBVVarsList();
      
      int length = boollist.size() + arithlist.size() + bvlist.size() + _allFailList.size();

      int index = 0;
      Symbol[] names = new Symbol[length];
      Sort[] sorts = new Sort[length];

      for (Symbol temp : boollist) {
        //String x = temp.toString().replace("\\|","");
        names[index] = temp;//getCtx().mkSymbol(x);
        sorts[index] = getCtx().getBoolSort();
        //System.out.println(temp.toString());
        index = index + 1;
      }    
      for (Symbol temp : arithlist) {
        //String x = temp.toString().replace("\\|","");
        names[index] = temp;//getCtx().mkSymbol(x);
        sorts[index] = getCtx().getIntSort();
        //System.out.println(temp.toString());
        index = index + 1;
      }    
      for (Symbol temp : bvlist) {
        //String x = temp.toString().replace("\\|","");
        names[index] = temp;//getCtx().mkSymbol(x);
        sorts[index] = getCtx().mkBitVecSort(_allBVValues.get(temp));
        index = index + 1;
      }
      /*
      String k = "x";
      Symbol[] names1 = new Symbol[] { getCtx().mkSymbol(k),
                      getCtx().mkSymbol("y") };

      BoolExpr aexpr = getCtx().mkBoolConst(k);
      Sort[] sorts1 = new Sort[] { getCtx().getBoolSort(), getCtx().getBoolSort() };

      BoolExpr king = getCtx().mkForall(sorts1,
        names1, 
      aexpr, 1, null , null, null, null);
      _optsolve.Add(king);
      System.out.println(king);
      */
      /*
      length = _allFailList.size();

      index = 0;
      Symbol[] failnames = new Symbol[length];
      Sort[] failsorts = new Sort[length];
      //*/
      for (Symbol temp : _allFailList) {
        names[index] = temp;
        sorts[index] = getCtx().getIntSort();
        index = index + 1;
      }    
      //*
      BoolExpr quick = getCtx().mkForall(sorts,
        names, 
      mkImplies(_modelAnd, _propertRep), 1, null , null, null, null);
      //*/
      /*BoolExpr quick = getCtx().mkForall(failsorts,
        failnames, 
      getCtx().mkExists(sorts, names, mkImplies(_modelAnd, _propertRep),
         1, null , null, null, null), 1, null , null, null, null);
      */
      /*
      BoolExpr quick = getCtx().mkForall(failsorts,
        failnames, 
        getCtx().mkExists(sorts, names, mkAnd(_modelAnd, _propertRep),
         1, null , null, null, null) ,
          1, null , null, null, null);
      */
      _optsolve.Add(quick);
      //System.out.println(quick);

    }

  }


  public ArrayList<ManagementObjective> getObjectives() {  
    BufferedReader br = null;
    String line;
    Set<String> validActions = new HashSet<String>();
    validActions.add("EQUATE");
    validActions.add("NOMODIFY");
    validActions.add("ELIMINATE");
    //validActions.add("MINIMIZE");

    ArrayList<ManagementObjective> obj = new ArrayList<>();
    try {

        br = new BufferedReader(new FileReader("grammar.txt"));
        while ((line = br.readLine()) != null) {
            //System.out.println("Input " + line);
            // use // as separator
            String[] vals = line.split("//");
            if (vals.length!=2) {
                System.out.println("Invalid command w.r.t. //");
                continue;
            }
            String action = vals[0];
            if (!validActions.contains(action)) {
                System.out.println("Invalid action " + action);
                continue;
            }
            //System.out.println("action " + action + 
            // "\tremaining line: " + vals[1]);
            String[] command = vals[1].split("GROUPBY");
            boolean hasGroup = false;
            String groupName = "";
            if (command.length == 2) {
                hasGroup = true;
                groupName = command[1];
            } else if (command.length > 2) {
                System.out.println("Invalid groupby command");
                continue;                    
            }
            //System.out.println("groupName " + groupName + 
            //"\tremaining line: " + command[0]);
            boolean hasSubtype = false;
            String subtype = "";
            String[] types = command[0].split("/");
            if (command[0].contains("/")) {
                if (types.length == 2) {
                    hasSubtype = true;
                    subtype = types[1];
                } else if (types.length > 2) {
                    System.out.println("Invalid subtype " + 
                     "command");
                    continue;                    
                }
                //System.out.println("subtype " + subtype);
            } else {
                types[0] = command[0];
            }
            //System.out.println("# " + types[0]);
            String[] names = types[0].split(" ");
            String type = "";
            String typeName = "";
            String routerName = "";
            boolean hasRouterName = false;
            boolean hasType = false;
            for (String name : names) {
              if (name.contains("[") && name.contains("]")) {
                  //System.out.println("# " + types[0]);
                  String[] temp = name.split("\\[");
                  if (temp[0].equalsIgnoreCase("Router")) {
                    routerName = temp[1].split("=")[1].replaceAll("\"+",
                      "").replaceAll("\\]+","");
                    hasRouterName = true;         
                  } else {
                    type = temp[0];
                    typeName = temp[1].split("=")[1].replaceAll("\"+",
                      "").replaceAll("\\]+","");
                    hasType = true;
                  }
                  //System.out.println("type " + type + "\ttypeName " + typeName);
              } else {
                  if (name.equalsIgnoreCase("Router")) {
                    routerName = "*";
                    hasRouterName = true;
                  } else {
                    type = name;
                    typeName = "*";
                    hasType = true;
                  }
              }
            }
            //ELIMINATE //RoutingProcess[type="static"]/Origination GROUPBY prefix
            //NOMODIFY //Router GROUPBY name
            
            ManagementObjective curObj = new ManagementObjective();
            curObj.setAction(action);
            if (hasType) {
              curObj.setType(type);
              curObj.setTypeName(typeName);
            }
            if (hasSubtype) {
              curObj.setSubtype(subtype);
            }
            if (hasGroup) {
              curObj.setGroupBy(groupName);
            }
            if (hasRouterName) {
              curObj.setRouterName(routerName);
            }
            obj.add(curObj);
        }

    } catch (FileNotFoundException e) {
        e.printStackTrace();
    } catch (IOException e) {
        e.printStackTrace();
    } finally {
       try {
        br.close();
       } catch (IOException e) {
      e.printStackTrace();
       }
    }
    return obj;
  }

  /**
   * Adds soft constraints for user-specified management objective (@obj)
   *
   */
  public void addManagementObjectiveConstraints(ManagementObjective obj) {
    /*
    if (obj.hasGroupBy() == true) {
      if (obj.getAction().equals("NOMODIFY")) {
        if (obj.getType().equalsIgnoreCase("Router")) {
                
        }
      }
    } else {
      if (obj.getAction().equals("NOMODIFY")) {
        if (obj.getType().equalsIgnoreCase("Router")) {
          for (String router : _abstractTree.keySet()) {
            if (router.matches(obj.getTypeName())) {

            }
          }
        }
      }

    }*/
    obj.print();
    String action = obj.getAction();
    for (String router : _abstractTree.keySet()) {

      System.out.println("Router " + router);
      if (!(obj.getRouterName().equals("*") || 
        obj.getRouterName().equals(router))) {
        continue;
      }

      if (obj.getType().equals("*") || 
        obj.getType().equalsIgnoreCase("PacketFilter")) {
        if (_abstractTree.get(router).containsKey("pfilter")) {
          System.out.println("pfilter");
          for (String filter_num : _abstractTree.get(
            router).get("pfilter").keySet()) {

              if (_abstractTree.get(router).get("pfilter").get(
                filter_num).get("match").containsKey("add")) {
                  
                  System.out.println("add " + _abstractTree.get(
                    router).get("pfilter").get(filter_num).get("match").get("add"));
                  if (action.equalsIgnoreCase("NOMODIFY") ||
                   action.equalsIgnoreCase("ELIMINATE")) {
                    addSoft(_abstractTree.get(router).get("pfilter").get(
                      filter_num).get("match").get("add"),
                    1,
                    "");
                  }

              }
              if (_abstractTree.get(router).get("pfilter").get(
                filter_num).get("match").containsKey("remove")) {
                  
                  System.out.println("add " + _abstractTree.get(
                    router).get("pfilter").get(filter_num).get("match").get("remove"));
                  if (action.equalsIgnoreCase("NOMODIFY")) {
                    addSoft(_abstractTree.get(router).get("pfilter").get(
                      filter_num).get("match").get("remove"),
                    1,
                    "");
                  } else if (action.equalsIgnoreCase("ELIMINATE")) {
                    addSoft(mkNot(_abstractTree.get(router).get("pfilter").get(
                      filter_num).get("match").get("remove")),
                    1,
                    "");                  
                  }

              }
          }
        }
      }
      // route filter
      if (obj.getType().equals("*") || 
        obj.getType().equalsIgnoreCase("RouteFilter")) {
        if (_abstractTree.get(router).containsKey("rfilter")) {
          
          System.out.println("rfilter");
          for (String filter_num : _abstractTree.get(
            router).get("rfilter").keySet()) {
              if (_abstractTree.get(router).get("rfilter").get(
                filter_num).get("match").containsKey("add")) {
          
                  System.out.println("add " + _abstractTree.get(
                    router).get("rfilter").get(filter_num).get("match").get("add"));
                  if (action.equalsIgnoreCase("NOMODIFY") ||
                   action.equalsIgnoreCase("ELIMINATE")) {
                    addSoft(_abstractTree.get(router).get("rfilter").get(
                      filter_num).get("match").get("add"),
                    1,
                    "");
                  }
          
              }
              if (_abstractTree.get(router).get("rfilter").get(
                filter_num).get("match").containsKey("remove")) {
          
                  System.out.println("add " + _abstractTree.get(
                    router).get("rfilter").get(filter_num).get("match").get("remove"));
                  if (action.equalsIgnoreCase("NOMODIFY")) {
                    addSoft(_abstractTree.get(router).get("rfilter").get(
                      filter_num).get("match").get("remove"),
                    1,
                    "");
                  } else if (action.equalsIgnoreCase("ELIMINATE")) {
                    addSoft(mkNot(_abstractTree.get(router).get("rfilter").get(
                      filter_num).get("match").get("remove")),
                    1,
                    "");                  
                  }
          
              }
          }
        }
      }
      // process
      if (obj.getType().equals("*") || 
        obj.getType().equalsIgnoreCase("RoutingProcess")) {
        if (_abstractTree.get(router).containsKey("process")) {
          System.out.println("process");

          // origination
          if (obj.getSubtype().equals("*") ||
            obj.getSubtype().equalsIgnoreCase("Origination")) {
            System.out.println("origination");        
            for (String origination_num : _abstractTree.get(
              router).get("process").get("origination").keySet()) {
                if (_abstractTree.get(router).get("process").get(
                  "origination").get(origination_num).containsKey("add")) {
                    System.out.println("add " + _abstractTree.get(
                      router).get("process").get("origination").get(origination_num).get("add"));
          
                    if (action.equalsIgnoreCase("NOMODIFY") ||
                     action.equalsIgnoreCase("ELIMINATE")) {
                      addSoft(_abstractTree.get(
                      router).get("process").get("origination").get(origination_num).get("add"),
                      1,
                      "");                  
                    }
          
                }
                if (_abstractTree.get(router).get("process").get(
                  "origination").get(origination_num).containsKey("remove")) {
                    System.out.println("remove " + _abstractTree.get(
                      router).get("process").get("origination").get(origination_num).get("remove"));
          
                    if (action.equalsIgnoreCase("NOMODIFY")) {
                      addSoft(_abstractTree.get(
                      router).get("process").get("origination").get(origination_num).get("remove"),
                      1,
                      "");                  
                    }  else if (action.equalsIgnoreCase("ELIMINATE")) {
                      addSoft(mkNot(_abstractTree.get(
                      router).get("process").get("origination").get(origination_num).get("remove")),
                      1,
                      "");                                        
                    }
          
                }
            }
          }

          // adjacency
          if (obj.getSubtype().equals("*") ||
            obj.getSubtype().equalsIgnoreCase("Adjacency")) {
            System.out.println("adjacency");        
            for (String adjacency_num : _abstractTree.get(
              router).get("process").get("adjacency").keySet()) {
                if (_abstractTree.get(router).get("process").get(
                  "adjacency").get(adjacency_num).containsKey("add")) {
                    System.out.println("add " + _abstractTree.get(
                      router).get("process").get("adjacency").get(adjacency_num).get("add"));
          
                    if (action.equalsIgnoreCase("NOMODIFY") ||
                     action.equalsIgnoreCase("ELIMINATE")) {
                      addSoft(_abstractTree.get(
                      router).get("process").get("adjacency").get(adjacency_num).get("add"),
                      1,
                      "");                  
                    }
          
                }
                if (_abstractTree.get(router).get("process").get(
                  "adjacency").get(adjacency_num).containsKey("remove")) {
                    System.out.println("remove " + _abstractTree.get(
                      router).get("process").get("adjacency").get(adjacency_num).get("remove"));
          
                    if (action.equalsIgnoreCase("NOMODIFY")) {
                      addSoft(_abstractTree.get(
                      router).get("process").get("adjacency").get(adjacency_num).get("remove"),
                      1,
                      "");                  
                    }  else if (action.equalsIgnoreCase("ELIMINATE")) {
                      addSoft(mkNot(_abstractTree.get(
                      router).get("process").get("adjacency").get(adjacency_num).get("remove")),
                      1,
                      "");                                        
                    }
          
                }
            }
          }
        }
      }
    }
  }

  /**
   * Checks that a property is always true by seeing if the encoding is unsatisfiable. mkIf the
   * model is satisfiable, then there is a counter example to the property.
   *
   * @return A VerificationResult indicating the status of the check.
   */
  public Tuple<VerificationResult, Model> verify() {
    // @archie modified to use _optsolve
    EncoderSlice mainSlice = _slices.get(MAIN_SLICE_NAME);
    int numVariables = _allVariables.size();
    int numConstraints = _solver.getAssertions().length;
    int numNodes = mainSlice.getGraph().getConfigurations().size();
    int numEdges = 0;
    for (Map.Entry<String, Set<String>> e : mainSlice.getGraph().getNeighbors().entrySet()) {
      numEdges += e.getValue().size();
    }
    // we have some special management objectives that are specified using _repairObjective
    if (_repairObjective == 0) {
      System.out.println("\nThe objective is minimize changes\n");      
      // These constraints were created inline in encoderslice code
    } else if (_repairObjective == 1) {
      System.out.println("\nThe objective is minimize devices affected\n");      
      for (String keyRouter : _routerConsMap.keySet()) {
      	BoolExpr device = getCtx().mkBoolConst("@" + keyRouter);
      	add(mkEq(device, _routerConsMap.get(keyRouter)));
      	addSoft(device, 10000, "deviceAffected");
        //addSoft(_routerConsMap.get(keyRouter), 10000, "deviceAffected");
      }
    } else {
      System.out.println("\nThe user is specifying a custom objective\n");
      ArrayList<ManagementObjective> mgmt = getObjectives();
      for (ManagementObjective obj : mgmt) {
        addManagementObjectiveConstraints(obj);
      }
    }
    /* Specifies a minimize data forwarding objective
    else if (_repairObjective == 2) {
      Map<String, String> dfwd = new HashMap<>();
      String line;
      //System.out.println("Datafwd objective");
      
      try {
        BufferedReader reader = new BufferedReader(new FileReader("datafwd"));
        
        while((line = reader.readLine()) != null) {
              String[] split = line.split(" ");
              dfwd.put(split[0], split[1]);
        }
        reader.close();
      } catch (IOException e) {
        System.out.println("Reader IO error");
      }      

      
      for (Entry<String, Set<BoolExpr>> entry : _dataforward.entrySet()) {
        for ( BoolExpr data : entry.getValue() ) {
          String datafwdvar = data.toString();

          if (!dfwd.containsKey(datafwdvar)) {
            continue;
          }

          if (dfwd.get(datafwdvar).equals("false")) {
            //System.out.println(datafwdvar + "false");
            addSoft( mkEq(data,mkFalse()), 100000,"fwdAffected");
          } else if (dfwd.get(datafwdvar).equals("true")) {
            //System.out.println(datafwdvar + "true");
            addSoft( mkEq(data,mkTrue()), 100000, "fwdAffected");
          }
        }
      }
    } 
    */

    try {
      /*
      BufferedWriter writer = new BufferedWriter(new FileWriter("SMT.smt"));
      writer.write(_solver.toString());
      writer.close();
      */
      System.out.println("\nNetwork encoded in MAXSMT.smt\n");    
      BufferedWriter writer = new BufferedWriter(new FileWriter("MAXSMT.smt"));
      writer.write(_optsolve.toString());
      writer.close();
      System.out.println("\nRun in command line: z3 -smt2 MAXSMT.smt\n");      
    } catch (IOException e) {
      System.out.println("IO error");
    }

    VerificationStats stats = null;
    VerificationResult res = new VerificationResult(true, null, null, null, null, null, stats);
    return new Tuple<>(res, null);
    // currently solving smt happens in command line
    // TODO: automate it below
    /*
    long start = System.currentTimeMillis();
    Status status = _optsolve.Check();
    long time = System.currentTimeMillis() - start;

    if (_question.getBenchmark()) {
      stats = new VerificationStats();
      stats.setAvgNumNodes(numNodes);
      stats.setMaxNumNodes(numNodes);
      stats.setMinNumNodes(numNodes);
      stats.setAvgNumEdges(numEdges);
      stats.setMaxNumEdges(numEdges);
      stats.setMinNumEdges(numEdges);
      stats.setAvgNumVariables(numVariables);
      stats.setMaxNumVariables(numVariables);
      stats.setMinNumVariables(numVariables);
      stats.setAvgNumConstraints(numConstraints);
      stats.setMaxNumConstraints(numConstraints);
      stats.setMinNumConstraints(numConstraints);
      stats.setAvgSolverTime(time);
      stats.setMaxSolverTime(time);
      stats.setMinSolverTime(time);
    }

    if (status == Status.UNSATISFIABLE) {
      VerificationResult res = new VerificationResult(true, null, null, null, null, null, stats);
      System.out.println("\n\nUNSATISFIABLE\n\n");
      return new Tuple<>(res, null);
    } else if (status == Status.UNKNOWN) {
      throw new BatfishException("ERROR: satisfiability unknown");
    } else {
      VerificationResult result;

      Model m;
      while (true) {
        m = _optsolve.getModel();
        try {
          System.out.println("\n\nModel printed in model.smt\n\n");
          BufferedWriter writer = new BufferedWriter(new FileWriter("model.smt"));
          writer.write(m.toString());
          writer.close();
        } catch (IOException e) {
          System.out.println("IO error");
        }

        SortedMap<String, String> model = new TreeMap<>();
        SortedMap<String, String> packetModel = new TreeMap<>();
        SortedSet<String> fwdModel = new TreeSet<>();
        SortedMap<String, SortedMap<String, String>> envModel = new TreeMap<>();
        SortedSet<String> failures = new TreeSet<>();
        //buildCounterExample(this, m, model, packetModel, fwdModel, envModel, failures);
        //if (_previousEncoder != null) {
        //  buildCounterExample(
        //      _previousEncoder, m, model, packetModel, fwdModel, envModel, failures);
        //}
        result =
            new VerificationResult(false, model, packetModel, envModel, fwdModel, failures, stats);

        if (!_question.getMinimize()) {
          break;
        }

        BoolExpr blocking = environmentBlockingClause(m);
        add(blocking);

        Status s = _optsolve.Check();
        if (s == Status.UNSATISFIABLE) {
          break;
        }
        if (s == Status.UNKNOWN) {
          throw new BatfishException("ERROR: satisfiability unknown");
        }
      }

      return new Tuple<>(result, m);
    }
    */
  }

  /**
   * Adds all the constraints to capture the interactions of messages among all protocols in the
   * network. This should be called prior to calling the <b>verify method</b>
   */
  void computeEncoding() {
    if (_graph.hasStaticRouteWithDynamicNextHop()) {
      throw new BatfishException(
          "Cannot encode a network that has a static route with a dynamic next hop");
    }

    if (_tcEncoderExists) {
      return;
    }

    addFailedConstraints(_question.getFailures());
    getMainSlice().computeEncoding();
    for (Entry<String, EncoderSlice> entry : _slices.entrySet()) {
      String name = entry.getKey();
      EncoderSlice slice = entry.getValue();
      if (!name.equals(MAIN_SLICE_NAME)) {
        slice.computeEncoding();
      }
    }

    if ((_dstIp!= null) && (_srcIp!= null)) {

      if (!_dstEncoderExists) {
        _dstEncoders.put(_dstIp, this);
        Map<IpWildcard, Encoder> srcTc = new HashMap<>();
        srcTc.put(_srcIp, this);
        _tcEncoders.put(_dstIp, srcTc);
      
      } else {
        if (!_tcEncoders.get(_dstIp).containsKey(_srcIp)) {
          _tcEncoders.get(_dstIp).put(_srcIp, this);
        }
      }

      //System.out.println("dETGS: " + _dstEncoders);
      //System.out.println("tcETGS: " + _tcEncoders);
    }

  }

  /*
   * Getters and setters
   */

  SymbolicFailures getSymbolicFailures() {
    return _symbolicFailures;
  }

  EncoderSlice getSlice(String router) {
    String s = "SLICE-" + router + "_";
    return _slices.get(s);
  }

  public Context getCtx() {
    return _ctx;
  }

  EncoderSlice getMainSlice() {
    return _slices.get(MAIN_SLICE_NAME);
  }

  Solver getSolver() {
    return _solver;
  }

  Optimize getOptimize() {
    return _optsolve;
  }

  Map<String, Expr> getAllVariables() {
    return _allVariables;
  }

  int getId() {
    return _encodingId;
  }

  public String getStringId() {
    return _encId;
  }

  boolean getModelIgp() {
    return _modelIgp;
  }

  Map<String, Map<String, BoolExpr>> getSliceReachability() {
    return _sliceReachability;
  }

  UnsatCore getUnsatCore() {
    return _unsatCore;
  }

  int getFailures() {
    return _question.getFailures();
  }

  public boolean getFullModel() {
    return _question.getFullModel();
  }

  private Map<String, EncoderSlice> getSlices() {
    return _slices;
  }

  HeaderQuestion getQuestion() {
    return _question;
  }

  public void setQuestion(HeaderQuestion question) {
    this._question = question;
  }

  public BitVecExpr mkBV(long val, int size) {
    return _ctx.mkBV(val, size);
  }

  public BitVecExpr mkBVAND(BitVecExpr expr, BitVecExpr mask) {
    return _ctx.mkBVAND(expr, mask);
  }
  
  public EncoderSlice getPreviousEncoderSlice() {
    return _previousEncoder.getMainSlice();
  }

  public BoolExpr getModelAnd() {
    return _modelAnd;
  }
}
