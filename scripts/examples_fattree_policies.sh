#!/bin/bash

#if [[ $(uname) == "Darwin" ]]; then
#    SCRIPTPATH=`greadlink -f $0`
#else
#    SCRIPTPATH=`readlink -f $0`
#fi
#BASEDIR="`dirname $SCRIPTPATH`/.."
BASEDIR=/users/anubhavnidhi/aceso/batfish/
source $BASEDIR/scripts/common_preamble.sh
TESTRIG_DIR=/users/anubhavnidhi/aceso/batfish/test_rigs/repair-examples/fattree/fattree8
CONFIGS_DIR=$TESTRIG_DIR/unbroken/configs
POLICIES_DIR=$TESTRIG_DIR/unbroken/policies
mkdir -p $POLICIES_DIR
rm -f $POLICIES_DIR/reachability.txt $POLICIES_DIR/pathlength.txt

NUM_DEVICES=`\ls $CONFIGS_DIR | wc -l`
BOUND=$((NUM_DEVICES/2))

\ls $CONFIGS_DIR | while read DSTDEV; do
    DSTNUM=`echo $DSTDEV | sed -e 's/edge-//'`
    DSTNUM=`echo $DSTNUM | sed -e 's/core-//'`
    DSTNUM=`echo $DSTNUM | sed -e 's/aggregation-//'`
    DSTIP="70.0.$DSTNUM.0/31"
    \ls $CONFIGS_DIR | while read SRCDEV; do
        SRCNUM=`echo $SRCDEV | sed -e 's/edge-//'`
	SRCNUM=`echo $SRCNUM | sed -e 's/core-//'`
	SRCNUM=`echo $SRCNUM | sed -e 's/aggregation-//'`
        SRCIP="70.0.$SRCNUM.0/31"
        if [ "$SRCIP" != "$DSTIP" ]; then
            echo "smt-reachability srcIps=['$SRCIP'],dstIps=['$DSTIP'],finalNodeRegex=\"$DSTDEV\",finalIfaceRegex=\"Ethernet0\"" >> $POLICIES_DIR/reachability.txt
            echo "smt-bounded-length srcIps=['$SRCIP'],dstIps=['$DSTIP'],finalNodeRegex=\"$DSTDEV\",finalIfaceRegex=\"Ethernet0\",bound=$BOUND" >> $POLICIES_DIR/pathlength.txt
        fi
    done
done
