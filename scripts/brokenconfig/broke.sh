filename=$1
echo filename
smtfile="$filename.smt"
echo $smtfile
smtmodelfile="$filename.model.smt"
echo $smtmodelfile
python filter.py $smtfile && echo "(get-objectives)" >> $smtfile && echo "(get-model)" >> $smtfile
