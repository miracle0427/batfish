#!/bin/bash

# Create testrigs for a directory of configuration snapshots

# Get settings
if [ $# -lt 2 ]; then
    echo "Usage: `basename $0` SNAPSHOTS_DIR TESTRIGS_DIR"
    exit 1
    # Example: ./testrigs_create.sh /shared/configs/uwmadison/snapshots_6hr/dist/ /shared/minesweeper/test_rigs/uwmadison_6hr_dist/
fi
SNAPSHOTS_ROOT=$1
TESTRIGS_TARGET=$2

\ls $SNAPSHOTS_ROOT | while read SNAPSHOT; do
    echo $SNAPSHOT
    mkdir $TESTRIGS_TARGET/$SNAPSHOT
    ln -s $SNAPSHOTS_ROOT/$SNAPSHOT $TESTRIGS_TARGET/$SNAPSHOT/configs
done
