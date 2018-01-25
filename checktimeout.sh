a=170000

while [ $a -lt 4200000 ]
do
   echo $a
   time (z3 -t:$a -smt2 MAXSMT.smt)
   a=`expr $a + 20000`
done
#time (z3 -t:150000 -smt2 MAXSMT.smt)
