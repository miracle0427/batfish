for entry in "subprop"/*
do
  echo "$entry"
  cp $entry properties.txt
  allinone -cmdfile runbroken.txt
  entryname=`echo $entry | awk -F"/" '{print $2}'`
  entryname="broke$entryname"
  ./setup.sh $entryname
  output="brokeoutput/$entryname.out"
  ./runz3s.sh $entryname > $output
  #break
done
echo "Finished all Z3 done"
