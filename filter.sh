
netcomp=$1

for folder in "$netcomp"/*
do
	echo $folder
	#continue
	cd ~/new/rebase/batfish
	cp filterpolicy.py $folder/logs/
	cd $folder/logs/
	rm -rf reach
	mkdir reach
	python filterpolicy.py
	cd ~/new/rebase/batfish
done
