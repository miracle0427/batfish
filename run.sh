allinone -cmdfile commands.txt
echo "(check-sat)" >> enc.smt
python filter.py max.smt
time z3 -smt2 max.smt
