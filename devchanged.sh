netcomp=$1

for file in $netcomp/*
do
	#config1=`find $netcomp -name ${file}_attrs_simple_*`
	python filechanged.py $file
done

