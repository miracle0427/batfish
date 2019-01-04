if [ $# -ne 1 ]; then
	echo "./mindevchng.sh <main_folder>"
	exit
fi

config=$1
echo "1" > obj.txt
./filter.sh $config
./runallconfigs.sh $config
find pathModel/$config/*/logs/reach/* -not -name "*model*" -exec rm -rf {} \;
./devchanged.sh pathModel/$config > runoutput-devchng

# The output of this script is in a file called "runoutput" and "runoutput-devchng"
