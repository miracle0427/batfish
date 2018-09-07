config=$1
for file in $config/*;
do
        echo $file
        python simplesplit.py $file
done

