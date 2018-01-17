filename=$1
smtfile="$filename.smt"
smtmodelfile="$filename.model.smt"
python filter.py $smtfile && echo "(get-objectives)" >> $smtfile && echo "(get-model)" >> $smtfile
