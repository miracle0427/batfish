allfolder=$1
numpols=$2
source tools/batfish_functions.sh
rm -rf unilog
mkdir unilog
#props=("fail" "block" "pref" "bound")
for folder in "$allfolder"/*
do
  #for policy in "${props[@]}"
  #do
        echo "init-snapshot $folder" > prop.txt
        shuf -n $numpols $folder/logs/minesweeper_tocheck.txt > thisFile.txt
        echo "get arcFail failNodeRegex=\"thisFile.txt\", notFailNodeRegex=\"block\"" >> prop.txt
        #echo "get arcFail failNodeRegex=\"thisFile.txt\", notFailNodeRegex=\"pref\"" >> prop.txt
        #echo "get arcFail failNodeRegex=\"thisFile.txt\", notFailNodeRegex=\"fail\"" >> prop.txt
        #echo "get arcFail failNodeRegex=\"thisFile.txt\", notFailNodeRegex=\"bound\"" >> prop.txt
        text=`echo $folder | awk -F/ '{print $NF}'`
        #proptext="$text.$policy"
        allinone -cmdfile prop.txt #| tee unilog/$text
  #done

done
