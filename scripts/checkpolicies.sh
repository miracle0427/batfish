#!/bin/bash

if [[ $(uname) == "Darwin" ]]; then
    SCRIPTPATH=`greadlink -f $0`
else
    SCRIPTPATH=`readlink -f $0`
fi
BASEDIR="`dirname $SCRIPTPATH`/.."
source $BASEDIR/scripts/common_preamble.sh

echo $TESTRIG_DIR

CMDFILE="/tmp/checkpolicies.batfish"
rm $CMDFILE
POLICIESFILE="$TESTRIG_DIR/policies/tocheck.txt"

cat $POLICIESFILE | while read POLICY; do
    echo "get $POLICY" >> $CMDFILE
done

allinone $BATFISH_ARGS -runmode batch -cmdfile $CMDFILE | tee "$TESTRIG_DIR/policies/checkpolicies.log"
