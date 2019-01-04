./minchange.sh ~/exp-old
mv runoutput minchange-out
./mindevchng.sh ~/exp-old
mv runoutput mindevchange-out
./minfwdchng.sh ~/exp-old-nochng ~/exp-old
mv runoutput minfwd-out
./mintempchng.sh ~/exp-old
mv runoutput mintemp-out
