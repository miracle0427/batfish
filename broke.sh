python filter.py fail.smt && echo "(get-objectives)" >> fail.smt && echo "(get-model)" >> fail.smt
start=`date +%s`
z3 -smt2 fail.smt > failmodel.smt
end=`date +%s`

runtime=$((end-start))
echo $runtime
