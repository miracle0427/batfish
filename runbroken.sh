#source /users/anubhavnidhi/aceso/batfish/tools/batfish_functions.sh
start=`date +%s`
for entry in "edgeprops"/*
do
  echo "$entry"
  cp $entry properties.txt
  allinone -cmdfile runbroken.txt
  entryname=`echo $entry | awk -F"/" '{print $2}'`
  entryname="broke$entryname"
  ./setup.sh $entryname
  #output="brokeoutput/$entryname.out"
  #./runz3s.sh $entryname > $output &
done


start=`date +%s`
for entry in "edgeprops"/*
do
  entryname=`echo $entry | awk -F"/" '{print $2}'`
  entryname="broke$entryname"
  output="brokeoutput/$entryname.out"
  ./runz3s.sh $entryname > $output &
done
echo "Waiting"
wait
echo "All edgeprops Z3 done"
end=`date +%s`
runtime=$((end-start))
echo "Total time for running all parallel props in broken config: $runtime" > BrokenOutput


for entry in "otherpropnotall"/*
do
  echo "$entry"
  cp $entry properties.txt
  allinone -cmdfile runbroken.txt
  entryname=`echo $entry | awk -F"/" '{print $2}'`
  entryname="broke$entryname"
  ./setup.sh $entryname
  output="output/$entryname.out"
  ./runz3s.sh $entryname > $output
  #break
done
echo "Finished all Z3 done"
