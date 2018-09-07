#for file in Arnes Bics CrlNetworkServices Columbus Latnet Uninett2011 Colt GtsCe UsCarrie TataNld;
#for file in pref/*;

config=$1
for file in $config/*;
do
	#python block.py $file
        #./policies_check.sh $file

        #python modifyacl.py $file
	#mkdir $file/logs
	#python simplesplitacl.py $file
        
	#mv $file/logs/verified.txt $file/logs/40.txt
        #head -n 16 $file/logs/40.txt > $file/logs/verified.txt
        #python block.py $file
	echo $file
	mkdir $file/logs
	#python ospfway.py $file
	python ospfpref.py $file

	#s=`ls $file/configs | wc -l`
	#echo $file,$s
done

