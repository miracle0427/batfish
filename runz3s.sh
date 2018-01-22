filename=$1
smtfile="$filename.smt"
smtmodelfile="$filename.model.smt"
start=`date +%s`
z3 -smt2 $smtfile > $smtmodelfile
end=`date +%s`
grep "(a .*)" $smtmodelfile | cut -d' ' -f3 | tr -d ")" >> sumobjective
runtime=$((end-start))
echo $runtime
