python filter.py fine.smt
echo "(get-objectives)" >> fine.smt && echo "(get-model)" >> fine.smt
start=`date +%s`
z3 -smt2 fine.smt > finemodel.smt
end=`date +%s`
runtime=$((end-start))
echo $runtime