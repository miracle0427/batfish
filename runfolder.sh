#source /users/anubhavnidhi/aceso/batfish/tools/batfish_functions.sh
start=`date +%s`
configs=$1
#policies="$configs/policies/reach"
policies="$2/logs/reach"
datafwd="$2/logs/datafwd"
rm -rf pathModel/$policies
rm -rf pathModelOut/$policies
mkdir -p pathModel/$policies
mkdir -p pathModelOut/$policies
rm sumobjective
source tools/batfish_functions.sh
for entry in "$policies"/*
do
  echo "$entry"
  cp $entry properties.txt
  ip=${entry//$policies/}
  entryfwd="$datafwd/$ip.model.smt.dfw"
  if [ -e "$entryfwd" ]; then
  	cp $entryfwd datafwd
  else
	:> datafwd
  fi

  echo "init-testrig $configs" > runfile.txt
  echo "get smt-mul srcIps=[\"103.0.3.3\"], dstIps=[\"104.0.1.3\"]" >> runfile.txt
  allinone -cmdfile runfile.txt
  entryname="pathModel/$entry"
  ./setup.sh $entryname
done

start=`date +%s`
for entry in "$policies"/*
do
  entryname="pathModel/$entry"
  output="pathModelOut/$entry.out"
  ./runz3s.sh $entryname > $output &
done
echo "Waiting"
wait
echo "All edgeprops Z3 done"
end=`date +%s`
objective=`awk '{ sum += $1 } END { print sum }' sumobjective`
runtime=$((end-start))
echo "$configs,$runtime,$objective" >> runoutput
