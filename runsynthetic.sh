fattree=$1
ring=$2

for entry in "$fattree"/*
do
	echo $entry
	./runtopo.sh $entry
	./runneighremove.sh $entry
	./runnetremove.sh $entry
done
#for entry in "$ring"/*
#do
#	echo $entry
#    	./runtopo.sh $entry
#	./runneighremove.sh $entry
#	./runnetremove.sh $entry
#done

