#!/bin/bash

# Checks which policies are satisfied

BASEDIR=`pwd`
#source $BASEDIR/scripts/common_preamble.sh

source $BASEDIR/common.sh $1

TESTRIG_DIR=$1

# Get policies to check
CHECKFILE="$TESTRIG_DIR/logs/minesweeper_tocheck.txt"
CMDFILE="$TESTRIG_DIR/logs/tocheck.cmd"

rm -f $CMDFILE

cat $CHECKFILE | while read POLICY; do
    echo "get $POLICY" >> $CMDFILE
done

# Check policies
echo "*** CHECKING POLICIES ***"
LOGFILE="$TESTRIG_DIR/logs/policies_check.log"

$BATFISH_PROG $BATFISH_ARGS -runmode batch -cmdfile $CMDFILE | tee "$LOGFILE"
BATFISHEXIT=${PIPESTATUS[0]}
if [[ $BATFISHEXIT -ne 0 ]]; then
    exit $BATFISHEXIT
fi

# Filter checked policies to only include satisfied policies
VERIFIEDFILE="$TESTRIG_DIR/logs/verified.txt"
rm -f $VERIFIEDFILE

echo "*** SATISFIED POLICIES ***"
COUNT=0
grep -n "Question" $LOGFILE | cut -d':' -f1 | while read STARTLINE; do
    COUNT=$((COUNT+1))
    LEN=`tail -n +$STARTLINE $LOGFILE | grep -n -m 1 "Summary" | cut -d':' -f1`
    VERIFIED=`tail -n +$STARTLINE $LOGFILE | head -n $LEN | grep -c "Verified"`
    if [ $VERIFIED == 1 ]; then
        head -n $COUNT $CHECKFILE | tail -n 1 | tee -a $VERIFIEDFILE
    fi
done

