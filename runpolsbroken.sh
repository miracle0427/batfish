start=`date +%s`
prop=$1
for entry in "$prop"/*
do
  echo "$entry"
  cp $entry properties.txt
  allinone -cmdfile runacl.txt
  entryname=`echo $entry | awk -F"/" '{print $2}'`
  #entryname=$entry
  entryname="mixpolmodel/$entryname"
  ./setup.sh $entryname 
  #echo "entry name $entryname"
done


start=`date +%s`
for entry in "$prop"/*
do
  entryname=`echo $entry | awk -F"/" '{print $2}'`
  #entryname=$entry
  outname=`echo $entry | awk -F"/" '{print $2}'`
  entryname="mixpolmodel/$entryname"
  output="mixpoloutput/$outname.out"
  ./runz3s.sh $entryname > $output &
  #echo "entry name $entryname"
  #echo "output name $output"
done
echo "Waiting"
wait
echo "All edgeprops Z3 done"
end=`date +%s`
runtime=$((end-start))
echo "broken,$prop,$runtime" >> propRun
