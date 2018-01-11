#!/bin/bash

source $BASEDIR/tools/batfish_functions.sh

TESTRIG_DIR="$BASEDIR/test_rigs"

while getopts t:h OPT; do
    case $OPT in
        t) # Relative test rig path
            TESTRIG=$OPTARG
            ;;
        h | \?)
            echo "Usage: `basename $0` -t TESTRIG_DIR"
            exit 1
            ;;
    esac
done

TESTRIG_DIR="$TESTRIG_DIR/$TESTRIG"
if [ ! -d "$TESTRIG_DIR" ]; then
    echo "Test rig directory \"$TESTRIG_DIR\" does not exist"
    exit 1
fi

BATFISH_ARGS="-testrigdir $TESTRIG_DIR"
