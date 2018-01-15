python filter.py check.smt && echo "(get-objectives)" >> check.smt && echo "(get-model)" >> check.smt
start=`date +%s`
z3 -smt2 check.smt > model.smt
end=`date +%s`

runtime=$((end-start))
echo $runtime
