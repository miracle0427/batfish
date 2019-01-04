if [ $# -ne 1 ]; then
	echo "./minchange.sh <main_folder>"
	exit
fi

config=$1
echo "0" > obj.txt
./filter.sh $config
./runallconfigs.sh $config

# The output of this script is in a file called "runoutput"
