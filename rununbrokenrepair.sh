rm -rf repair/*
rm -rf repairoutput/*
start=`date +%s`
prop=$1
for entry in "$prop"/*
do
  echo "$entry"
  cp $entry properties.txt
  allinone -cmdfile rununbroken.txt
  entryname=`echo $entry | awk -F"/" '{print $2}'`
  #entryname=$entry
  entryname="repair/fine$entryname"
  ./setup.sh $entryname 
  #output="output/$entryname.out"
  #./runz3s.sh $entryname > $output &
done


start=`date +%s`
for entry in "$prop"/*
do
  entryname=`echo $entry | awk -F"/" '{print $2}'`
  #entryname=$entry
  outname=`echo $entry | awk -F"/" '{print $2}'`
  entryname="repair/fine$entryname"
  output="repairoutput/fine$outname.out"
  ./runz3s.sh $entryname > $output &
done
echo "Waiting"
wait
echo "All edgeprops Z3 done"
end=`date +%s`
runtime=$((end-start))
echo "unbroken,$prop,$runtime" >> repairRun
