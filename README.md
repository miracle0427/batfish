## Installation
Install the [Gurobi optimizer version 9.1.2](https://gurobi.com). Academics
can [obtain a free academic
license](https://www.gurobi.com/academia/academic-program-and-licenses/).

Set the `GUROBI_HOME` environment variable to the full path of the
`gurobi912/linux64` directory.

Add the Gurobi jar file to your local Maven repository:
```
mvn install:install-file -Dfile=$GUROBI_HOME/lib/gurobi.jar -DgroupId=gurobi \
    -DartifactId=gurobi -Dversion=9.1.2 -Dpackaging=jar
```

Within your clone of this repository, run:
```bash
source tools/common.sh
batfish_rebuild_all
```

## Running Tiramisu

First you need to create a cmdfile (lets call it testc) with the following format

```
init-snapshot <path_to_config_folder>
get arcRAG failNodeRegex="<ip-files>", notFailNodeRegex="<policy>"
```

`<path_to_config_folder>` is the physical path which has your network data (e.g. `batfish/tests/java-smt/networks/BGP1` ). This folder should have a subfolder called `configs` which has all the device configuration files.

`<ip-files>` is a file with a set of srcIps, dstIps that we will use to verify the policy (e.g., `batfish/testcom`).

Depending on the requirement, you can use the following `<policy>`:
* `block` - always blocked
* `tpvp`  - currently reachable, (just run an instance of tpvp to find a path between src and dst)
* `fail` -  always reachable < K fails (it computes the value of K to cause unreachability)

Then in bash, you can run the command `allinone -cmdfile <cmdfile_name>` (e.g.  `allinone -cmdfile testc`)
