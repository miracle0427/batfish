# pathModel/fwd/Arnes_attrs_simple_6_962/logs/reach/

netcomp=$1

: '
for folder in $netcomp/*;
do
        #echo $folder
	datafwd="$folder/logs/datafwd"
	rm -rf $datafwd
	mkdir $datafwd
	echo $datafwd
	
        for file in fwdout/$folder/logs/reach/*;
	do
		cp $file $datafwd/.
		#echo $file
		# python datafwd.py fwdout/fwd/Bics_attrs_simple_4_510/logs/reach/80.0.3.0.model.smt
		# python datafwd.py $file
		
	done
done
'

: '
for folder in $netcomp/*;
do
        echo $folder

        for file in $folder/logs/reach/*;
        do
                echo $file
                # python datafwd.py fwdout/fwd/Bics_attrs_simple_4_510/logs/reach/80.0.3.0.model.smt
                python datafwd.py $file

        done
done
'

: '

rm -rf diffdata
mkdir diffdata

for folder in $netcomp/*;
do
        #echo $folder
        datafwd="pathModel/$folder/logs/reach"
        #echo $datafwd
	sub="fwd/"
	fld=${folder//$sub/}
        echo "" > diffdata/$fld
        for file in $folder/logs/datafwd/*;
        do
		substring="$folder/logs/datafwd/"		
		#ip=${file%"fwd/UsCarrie_attrs_simple_8_874/logs/datafwd/"}
		ip=${file//$substring/}
		#echo $file,$folder/logs/datafwd/ 
		if [ -e "$file" ]; then
			if [ -e "$datafwd/$ip" ]; then
				#echo "Both exists: $file, $datafwd/$ip"
				diff $file $datafwd/$ip >> diffdata/$fld
				echo "" >> diffdata/$fld
			fi
		fi
                
        done
done

'

: '

rm -rf diffdata
mkdir diffdata


fwd1="dfwd/fwd1"
fwd2="dfwd/fwd2"


for file in Arnes Bics CrlNetworkServices Columbus Latnet Uninett2011 Colt GtsCe UsCarrie TataNld;
do
	config1=`find $fwd1 -name ${file}_attrs_simple_*`
	config2=`find $fwd2 -name ${file}_attrs_simple_*`
	diff -r $config1/logs/reach $config2/logs/reach > diffdata/$file

done

'

fwd1="fwd2"
fwd2="dfwd/fwd1"

#mkdir diffstatdata

for file in Arnes Bics CrlNetworkServices Columbus Latnet Uninett2011 Colt GtsCe UsCarrie TataNld;
do
        config1=`find $fwd1 -name ${file}_attrs_simple_*`
        config2=`find $fwd2 -name ${file}_attrs_simple_*`
	#mkdir $config1/logs/datafwd
	#cp $config2/logs/reach/* $config1/logs/datafwd
        diff --brief -r $config1/logs/reach/ $config2/logs/reach/ > diffstatdata/$file 

done

