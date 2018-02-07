#!/bin/bash

# Filters policies where src/dst device is the same

if [[ $(uname) == "Darwin" ]]; then
    SCRIPTPATH=`greadlink -f $0`
else
    SCRIPTPATH=`readlink -f $0`
fi
BASEDIR="`dirname $SCRIPTPATH`/.."
source $BASEDIR/scripts/common_preamble.sh

VERIFIEDFILE="$TESTRIG_DIR/policies/verified.txt"
FILTEREDFILE="$TESTRIG_DIR/policies/verified_filtered.txt"
rm -f $FILTEREDFILE

cat $VERIFIEDFILE | while read POLICY; do
    DSTDEVICE=`echo $POLICY | gawk '{match($0,"finalNodeRegex=([^ ]+)",arr); print arr[1]}'`
    SRCDEVICE=`echo $POLICY | gawk '{match($0,"ingressNodeRegex=([^, ]+)",arr); print arr[1]}'`
    if [ "$SRCDEVICE" != "$DSTDEVICE" ]; then
        echo $POLICY >> $FILTEREDFILE
    fi
done
