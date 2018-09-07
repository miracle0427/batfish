
netcomp=$1
currentfolder=`pwd`
for folder in "$netcomp"/*
do
	echo $folder
	#continue
	cd $currentfolder
	cp filterpolicy.py $folder/logs/
	cd $folder/logs/
	rm -rf reach
	mkdir reach
	python filterpolicy.py
	cd $currentfolder
done
