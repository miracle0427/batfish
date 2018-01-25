#!/bin/bash

trap "kill -$$" SIGTERM

source $BASEDIR/tools/batfish_functions.sh

TESTRIG_DIR="$BASEDIR/test_rigs"
BATFISH_PROG="allinone"

while getopts t:ch OPT; do
    case $OPT in
        t) # Relative test rig path
            TESTRIG=$OPTARG
            ;;
        c) # Only run batfish client
            BATFISH_PROG="batfish_client"
            ;;
        h | \?)
            echo "Usage: `basename $0` -[h] [-t TESTRIG_DIR] [-c]"
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
