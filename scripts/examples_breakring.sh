#!/bin/bash

if [[ $(uname) == "Darwin" ]]; then
    SCRIPTPATH=`greadlink -f $0`
else
    SCRIPTPATH=`readlink -f $0`
fi
BASEDIR="`dirname $SCRIPTPATH`/.."
source $BASEDIR/scripts/common_preamble.sh

ORIG_CONFIGS_DIR=$TESTRIG_DIR/unbroken/configs
BROKEN_CONFIGS_DIR=$TESTRIG_DIR/rm-network_half/configs
rm $BROKEN_CONFIGS_DIR/*

mkdir -p $BROKEN_CONFIGS_DIR

DEVICES=`\ls $ORIG_CONFIGS_DIR | shuf`
NUM_DEVICES=`echo "$DEVICES" | wc -l`
NUM_BREAK=$((NUM_DEVICES/2))
NUM_ORIG=$((NUM_DEVICES - NUM_BREAK))

BREAK_DEVICES=`echo "$DEVICES" | head -n $NUM_BREAK`
ORIG_DEVICES=`echo "$DEVICES" | tail -n $NUM_ORIG`

echo "$BREAK_DEVICES" | while read DEVICE; do
    echo "Remove network from BGP stanza on $DEVICE"
    sed -e 's/network 70\.0\.[0-9]*\.0\/24//' $ORIG_CONFIGS_DIR/$DEVICE > $BROKEN_CONFIGS_DIR/$DEVICE
done

echo "$ORIG_DEVICES" | while read DEVICE; do
    echo "$DEVICE unmodified"
    ln -s ../../unbroken/configs/$DEVICE $BROKEN_CONFIGS_DIR/$DEVICE
done
