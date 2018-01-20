fattree=$1
ring=$2

for entry in "$fattree"/*
do
	./runtopo.sh $entry
	./runneighremove.sh $entry
	./runnetremove.sh $entry
done
for entry in "$ring"/*
do
        ./runtopo.sh $entry
	./runneighremove.sh $entry
	./runnetremove.sh $entry
done

