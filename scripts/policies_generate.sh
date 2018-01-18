#!/bin/bash

# Generate a list of policies to check

if [[ $(uname) == "Darwin" ]]; then
    SCRIPTPATH=`greadlink -f $0`
else
    SCRIPTPATH=`readlink -f $0`
fi
BASEDIR="`dirname $SCRIPTPATH`/.."
source $BASEDIR/scripts/common_preamble.sh

ARCDIR="$BASEDIR/../arc"

MINGROUP=3 # For fattree
MINGROUP=64 # For uwmadison

$ARCDIR/projects/arc/scripts/minesweeper_tocheck.sh -c minesweeper/$TESTRIG -m $MINGROUP

POLICIESDIR="$TESTRIG_DIR/policies"
mkdir -p $POLICIESDIR

cp $ARCDIR/output/logs/minesweeper/$TESTRIG/minesweeper_tocheck.txt $POLICIESDIR/tocheck.txt
