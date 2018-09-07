allfolder=$1

for file in $allfolder/*; do
        ./policies_check.sh $file
done

