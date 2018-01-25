#!/bin/bash

# Checks which policies are satisfied

if [[ $(uname) == "Darwin" ]]; then
    SCRIPTPATH=`greadlink -f $0`
else
    SCRIPTPATH=`readlink -f $0`
fi
BASEDIR="`dirname $SCRIPTPATH`/.."
source $BASEDIR/scripts/common_preamble.sh

# Get policies to check
CHECKFILE="$TESTRIG_DIR/policies/tocheck.txt"
CMDFILE="/tmp/policies_check.batfish"
rm -f $CMDFILE

cat $CHECKFILE | while read POLICY; do
    echo "get $POLICY" >> $CMDFILE
done

# Check policies
echo "*** CHECKING POLICIES ***"
LOGFILE="$TESTRIG_DIR/policies/policies_check.log"

$BATFISH_PROG $BATFISH_ARGS -runmode batch -cmdfile $CMDFILE | tee "$LOGFILE"
BATFISHEXIT=${PIPESTATUS[0]}
if [[ $BATFISHEXIT -ne 0 ]]; then
    exit $BATFISHEXIT
fi

# Filter checked policies to only include satisfied policies
VERIFIEDFILE="$TESTRIG_DIR/policies/verified.txt"
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
