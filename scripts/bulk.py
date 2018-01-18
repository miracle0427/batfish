#!/usr/bin/python

from argparse import ArgumentParser
import multiprocessing
import os
from pool import Pool
import subprocess
import sys

def hasSubDirs(startDir): 
    for subDir in sorted(os.listdir(startDir)):
        # Make sure it is a directory
        fullPath = startDir + "/" + subDir
        if (os.path.isdir(fullPath)):
            return True
    return False

def getDirs(startDir, depthRemain):
    if (0 == depthRemain):
        return []
    dirs = []
    for subDir in sorted(os.listdir(startDir)):
        # Make sure it is a directory
        fullPath = startDir + "/" + subDir
        if (not os.path.isdir(fullPath)):
            continue

        # Not deepest directory => recurse
        if (depthRemain > 1 and hasSubDirs(fullPath)):
            subsubDirs = getDirs(fullPath, depthRemain-1)
            for subsubDir in subsubDirs:
                dirs.append(subDir + "/" + subsubDir)
        # Deepest directory
        else:
            # Ignore dirs previously added if only last directory is desired
            if (args.onlyLast):
                del dirs[:]
            # Make sure directory is not excluded
            if ((args.excludeFile is None) 
                    or not os.path.exists(fullPath + "/" + args.excludeFile)):
                dirs.append(subDir)
            # Stop iterating if only first directory is desired
            if (args.onlyFirst):
                break
    return dirs

if (subprocess.check_output(["uname"]).rstrip() == "Darwin"):
    scriptpath = subprocess.check_output(["greadlink", "-f", sys.argv[0]])
else:
    scriptpath = subprocess.check_output(["readlink", "-f", sys.argv[0]])
basedir = os.path.dirname(scriptpath)+"/.."

# Parse arguments
parser = ArgumentParser(
        description='Run a script over many configuration snapshots')
parser.add_argument('-s', dest='script', action='store', required=True,
        help='script to run')
networksGroup = parser.add_mutually_exclusive_group(required=True)
networksGroup.add_argument('-n', dest='networksDir', action='store', 
        help='directory containing networks on which to run script')
networksGroup.add_argument('-l', dest='networksList', action='store', 
        help='file containing a list of networks on which to run script')
parser.add_argument('-c', dest='configDirPrefix', action='store',
        help='directory containing the configs for the snapshots')
parser.add_argument('-d', dest='dirDepth', action='store', default=2,
        help='how many directory levels deep to iterate')
parser.add_argument('-f', dest='onlyFirst', action='store_true',
        help='only consider the first directory in the deepest level')
parser.add_argument('-z', dest='onlyLast', action='store_true',
        help='only consider the last directory in the deepest level')
parser.add_argument('-e', dest='excludeFile', action='store',
        help='exclude a directory in the deepest level if it contains a file with the given name')
parser.add_argument('-a', dest='extraArgs', action='store',
        help='additional arguments to pass to script')
parser.add_argument('-p', dest='poolSize', action='store',
        default=(multiprocessing.cpu_count()/2),
        help='number of threads to use; default: '
            +str(multiprocessing.cpu_count()/2))
parser.add_argument('-i', dest='pollingInterval', action='store', default=30,
        help='how frequently to check (in seconds) if script has finished; default: 30')
parser.add_argument('-t', dest='timeout', action='store', default=1,
        help='how long to wait (in hours) for script to finish before killing; default: 1')
args = parser.parse_args()

# Post-process arguments
script = basedir+"/scripts/"+args.script
pool = Pool(int(args.poolSize), int(args.pollingInterval), 
        60*60*int(args.timeout))
if (args.networksList is None):
    dirs = getDirs(args.networksDir, int(args.dirDepth))
else:
    with open(args.networksList) as networksListFile:
        dirs = networksListFile.readlines()
    dirs = [item.strip() for item in dirs]
if (args.configDirPrefix is None and args.networksDir is not None):
    head, tail = os.path.split(args.networksDir)
    args.configDirPrefix = tail

# Iterate over directories
for directory in dirs:
    run = [script, '-t', args.configDirPrefix + "/" + directory]
    if (args.extraArgs is not None):
        run.extend(args.extraArgs.split(' '))
    pool.submit(run, name=directory)

# Wait for everything to finish
pool.join()
