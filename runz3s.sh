filename=$1
smtfile="$filename.smt"
smtmodelfile="$filename.model.smt"
start=`date +%s`
z3 -smt2 $smtfile > $smtmodelfile
end=`date +%s`
runtime=$((end-start))
echo $runtime
