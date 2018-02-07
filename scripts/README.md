# How to run scripts in parallel

1. Start the batfish coordinator
```bash
source tools/batfish_functions.sh
coordinator -loglevel info
```

1. Start the batfish service
```bash
source tools/batfish_functions.sh
batfish -loglevel info -servicemode true -register true -serviceport 6001
```
Repeat for as many tasks as you want to run in parallel, using a different `serviceport` for each instance.

1. Run `scripts/bulk.py` with the desired script and list of networks. You must specify:
  * `-p` with the maximum number of tasks to run in parallel; this should be less than or equal to the number of batfish service instances you started --- you may want to start more batfish services than needed, so that later tasks can still run even if an earlier task causes a batfish service instance to crash
  * `-a="-c"` to tell the desired script to only run the batfish client (because you have already started the coordinator and batfish service)
