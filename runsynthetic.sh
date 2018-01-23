#fattree=$2
ring=$1

#for entry in "$fattree"/*
#do
#	echo $entry
#	./runtopo.sh $entry
#	./runneighremove.sh $entry
#	./runnetremove.sh $entry
#done
for entry in "$ring"/*
do
	echo $entry
        unbroken="$entry/unbroken"
    	./runring.sh $unbroken
	oneneigh="$entry/rm-neighbor_one"
	./runring.sh $oneneigh
        halfneigh="$entry/rm-neighbor_half"
	./runring.sh $halfneigh
	onenet="$entry/rm-network_one"
	./runring.sh $onenet
	halfnet="$entry/rm-network_half"
	./runring.sh $halfnet
done

