if [ $# -ne 2 ]; then
	echo "./minfwdchng.sh <old_folder> <new_folder>"
	exit
fi

oldconfig=$1

echo "2" > obj.txt
./filter.sh $oldconfig
./runallconfigs.sh $oldconfig

find pathModel/$oldconfig/*/logs/reach/* -not -name "*model*" -exec rm -rf {} \;


for folder in $oldconfig/*;
do
	for file in pathModel/$folder/logs/reach/*;
	do
		python datafwd.py $file
	done
done

find pathModel/$oldconfig/*/logs/reach/* -not -name "*.dfw" -exec rm -rf {} \;


newconfig=$2
./filter.sh $newconfig


for folder in $oldconfig/*;
do
	afile="$(basename "$folder")"
	echo $afile
	rm -rf $newconfig/$afile/logs/datafwd
	mkdir $newconfig/$afile/logs/datafwd
	cp -r pathModel/$folder/logs/reach/* $newconfig/$afile/logs/datafwd/.
done

./runallconfigs.sh $newconfig

# The output of this script is in a file called "runoutput"

