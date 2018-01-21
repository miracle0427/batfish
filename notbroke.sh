filename=$1
echo filename
smtfile="$filename.smt"
echo $smtfile
smtmodelfile="$filename.model.smt"
echo $smtmodelfile
start=`date +%s`
z3 -smt2 $smtfile > $smtmodelfile
end=`date +%s`
runtime=$((end-start))
echo $runtime
