#source /users/anubhavnidhi/aceso/batfish/tools/batfish_functions.sh
start=`date +%s`
for entry in "edgeprops"/*
do
  echo "$entry"
  cp $entry properties.txt
  allinone -cmdfile rununbroken.txt
  entryname=`echo $entry | awk -F"/" '{print $2}'`
  entryname="fine$entryname"
  ./setup.sh $entryname
  #output="output/$entryname.out"
  #./runz3s.sh $entryname > $output &
done


start=`date +%s`
for entry in "edgeprops"/*
do
  entryname=`echo $entry | awk -F"/" '{print $2}'`
  entryname="fine$entryname"
  output="output/$entryname.out"
  ./runz3s.sh $entryname > $output &
done
echo "Waiting"
wait
echo "All edgeprops Z3 done"
end=`date +%s`
runtime=$((end-start))
echo "Total time for running all parallel props in unbroken config: $runtime" > UnbrokenOutput


for entry in "otherprop"/*
do
  echo "$entry"
  cp $entry properties.txt
  allinone -cmdfile rununbroken.txt
  entryname=`echo $entry | awk -F"/" '{print $2}'`
  entryname="fine$entryname"
  ./setup.sh $entryname
  output="output/$entryname.out"
  ./runz3s.sh $entryname > $output
  #break
done
echo "Finished all Z3 done"
