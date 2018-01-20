#!/bin/bash

#if [[ $(uname) == "Darwin" ]]; then
#    SCRIPTPATH=`greadlink -f $0`
#else
#    SCRIPTPATH=`readlink -f $0`
#fi
#BASEDIR="`dirname $SCRIPTPATH`/.."
BASEDIR=/users/anubhavnidhi/aceso/batfish/
source $BASEDIR/scripts/common_preamble.sh
TESTRIG_DIR=/users/anubhavnidhi/aceso/batfish/test_rigs/repair-examples/fattree/fattree2
ORIG_CONFIGS_DIR=$TESTRIG_DIR/unbroken/configs
#BROKEN_CONFIGS_DIR=$TESTRIG_DIR/rm-network_half/configs
BROKEN_CONFIGS_DIR=$TESTRIG_DIR/rm-neighbor_one/configs
rm $BROKEN_CONFIGS_DIR/*

mkdir -p $BROKEN_CONFIGS_DIR

#echo "TEST" $TESTRIG_DIR
#echo "BASE" $BASEDIR


DEVICES=`\ls $ORIG_CONFIGS_DIR | shuf`
NUM_DEVICES=`echo "$DEVICES" | wc -l`
#NUM_BREAK=$((NUM_DEVICES/2))
NUM_BREAK=$((NUM_DEVICES/1))
#NUM_BREAK=1
NUM_ORIG=$((NUM_DEVICES - NUM_BREAK))

BREAK_DEVICES=`echo "$DEVICES" | head -n $NUM_BREAK`
ORIG_DEVICES=`echo "$DEVICES" | tail -n $NUM_ORIG`

EDGE="edge"
echo "$BREAK_DEVICES" | while read DEVICE; do
    if [[ $DEVICE =~ $EDGE ]];
    then
    	echo "Remove neighbor from BGP stanza on $DEVICE"
    	sed -e 's/neighbor 10\.0\.[0-9]*\.0.*$//' $ORIG_CONFIGS_DIR/$DEVICE > $BROKEN_CONFIGS_DIR/$DEVICE
	#echo "Remove network from BGP stanza on $DEVICE"
	#sed -e 's/network 70\.0\.[0-9]*\.0\/24//' $ORIG_CONFIGS_DIR/$DEVICE > $BROKEN_CONFIGS_DIR/$DEVICE
    else
	echo "$DEVICE unmodified"
	ln -s ../../unbroken/configs/$DEVICE $BROKEN_CONFIGS_DIR/$DEVICE
    fi
done

#echo "$ORIG_DEVICES" | while read DEVICE; do
#    echo "$DEVICE unmodified"
#    ln -s ../../unbroken/configs/$DEVICE $BROKEN_CONFIGS_DIR/$DEVICE
#done
