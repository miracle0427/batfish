prop="mixpols"
for entry in "$prop"/*
do
  ./runpols.sh $entry
done

for entry in "$prop"/*
do
  ./runpolsbroken.sh $entry
done

