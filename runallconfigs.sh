netcomp=$1

rm -rf pathModel
rm -rf pathModelOut 
rm runoutput
echo "START"
#for file in Arnes Bics CrlNetworkServices Columbus Latnet Uninett2011 Colt GtsCe UsCarrie TataNld;
for file in $netcomp/*;
#for file in simple/Arnes_1.0_simple_8_244 simple/Bics_1.0_simple_8_98 simple/CrlNetworkServices_1.0_simple_8_681 simple/Columbus_1.0_simple_8_708 simple/Latnet_1.0_simple_8_686 simple/Uninett2011_1.0_simple_8_999 simple/Colt_1.0_simple_8_779 simple/UsCarrie_1.0_simple_8_204 simple/TataNld_1.0_simple_8_77 simple/GtsCe_1.0_simple_8_538;
do
	echo $file
	./runfolder.sh $file $file
done

