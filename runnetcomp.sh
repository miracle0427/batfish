netcomp=$1

rm -rf pathModel
rm -rf pathModelOut 
rm runoutput
echo "START"
#for file in Arnes Bics CrlNetworkServices Columbus Latnet Uninett2011 Colt GtsCe UsCarrie TataNld;
for file in $netcomp/*;
do
	echo $file
	./runeachnetcomp.sh $file $file
done

