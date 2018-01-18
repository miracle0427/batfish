#!/bin/bash
# Clean-up anonymization performed on configs so they are parseable

if [[ $(uname) == "Darwin" ]]; then
    SCRIPTPATH=`greadlink -f $0`
else
    SCRIPTPATH=`readlink -f $0`
fi
BASEDIR="`dirname $SCRIPTPATH`/.."
source $BASEDIR/scripts/common_preamble.sh

SED=`which gsed`
if [ -z "$SED" ]; then
    SED=`which sed`
    if [ -z "$SED" ]; then
        echo "Cannot locate (g)sed"
        exit 1
    fi
fi

\ls $TESTRIG_DIR/configs | while read CFG; do
    $SED -i --follow-symlinks 's/neighbor [0-9]*\.[0-9]*\.[0-9]*\.[0-9]* remove-private-as//' $TESTRIG_DIR/configs/$CFG
done
