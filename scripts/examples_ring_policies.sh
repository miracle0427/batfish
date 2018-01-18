#!/bin/bash

if [[ $(uname) == "Darwin" ]]; then
    SCRIPTPATH=`greadlink -f $0`
else
    SCRIPTPATH=`readlink -f $0`
fi
BASEDIR="`dirname $SCRIPTPATH`/.."
source $BASEDIR/scripts/common_preamble.sh

CONFIGS_DIR=$TESTRIG_DIR/unbroken/configs
POLICIES_DIR=$TESTRIG_DIR/unbroken/policies
mkdir -p $POLICIES_DIR
rm $POLICIES_DIR/reachability.txt

\ls $CONFIGS_DIR | while read DEVICE; do
    echo "smt-reachability finalNodeRegex=\"$DEVICE\",finalIfaceRegex=\"Ethernet0\"" >> $POLICIES_DIR/reachability.txt
done
