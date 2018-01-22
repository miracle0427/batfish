#source /users/anubhavnidhi/aceso/batfish/tools/batfish_functions.sh
start=`date +%s`
configs="$1/unbroken"
policies="$configs/policies/path"
configs="$1/rm-neighbor_one"
rm sumobjective
rm -rf pathModelNeigh/$policies
rm -rf pathModelNeighOut/$policies
mkdir -p pathModelNeigh/$policies
mkdir -p pathModelNeighOut/$policies

for entry in "$policies"/*
do
  echo "$entry"
  cp $entry properties.txt
  echo "init-testrig $configs" > runfile.txt
  echo "get smt-mul srcIps=[\"103.0.3.3\"], dstIps=[\"104.0.1.3\"]" >> runfile.txt
  #cat runfile.txt
  allinone -cmdfile runfile.txt
  #entryname=`echo $entry | awk -F"/" '{print $8}'`
  entryname="pathModelNeigh/$entry"
  ./setup.sh $entryname
  #echo $entryname
done


start=`date +%s`
for entry in "$policies"/*
do
  #entryname=`echo $entry | awk -F"/" '{print $8}'`
  entryname="pathModelNeigh/$entry"
  output="pathModelNeighOut/$entry.out"
  ./runz3s.sh $entryname > $output &
  #echo $entryname
  #echo $output
done
echo "Waiting"
wait
echo "All edgeprops Z3 done"
end=`date +%s`
runtime=$((end-start))
objective=`awk '{ sum += $1 } END { print sum }' sumobjective`
echo "neigh,$configs,$runtime,$objective" >> runoutput
