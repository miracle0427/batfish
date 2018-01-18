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
rm -f $POLICIES_DIR/reachability.txt $POLICIES_DIR/pathlength.txt

NUM_DEVICES=`\ls $CONFIGS_DIR | wc -l`
BOUND=$((NUM_DEVICES/2))

\ls $CONFIGS_DIR | while read DEVICE; do
    echo "smt-reachability finalNodeRegex=\"$DEVICE\",finalIfaceRegex=\"Ethernet0\"" >> $POLICIES_DIR/reachability.txt
    echo "smt-bounded-length finalNodeRegex=\"$DEVICE\",finalIfaceRegex=\"Ethernet0\",bound=$BOUND" >> $POLICIES_DIR/pathlength.txt
done
