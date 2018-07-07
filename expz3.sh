echo "(get-objectives)" >> MAXSMT.smt
echo "(get-model)" >> MAXSMT.smt
z3 -smt2 MAXSMT.smt > model.smt
grep "(a *" model.smt | cut -d' ' -f3 | tr -d ")" > sumobjective
cat sumobjective
