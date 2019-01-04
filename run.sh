allinone -cmdfile runfile.txt   
echo "(get-objectives)" >> MAXSMT.smt
python filter.py enc.smt
time z3 -smt2 enc.smt

