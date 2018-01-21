start=`date +%s`
prop=$1
for entry in "$prop"/*
do
  echo "$entry"
  cp $entry properties.txt
  allinone -cmdfile runnet.txt
  entryname=`echo $entry | awk -F"/" '{print $2}'`
  #entryname=$entry
  entryname="repair/net$entryname"
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
  entryname="repair/net$entryname"
  output="repairoutput/net$outname.out"
  ./runz3s.sh $entryname > $output &
done
echo "Waiting"
wait
echo "All edgeprops Z3 done"
end=`date +%s`
runtime=$((end-start))
echo "net,$prop,$runtime" >> repairRun
