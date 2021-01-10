# Description

This docker file will build an image with [CARLA simulator](https://carla.org/ "") develop environment (git repo with source code too) The image is based on [this UE4 docker image](https://hub.docker.com/r/adamrehn/ue4-runtime ""). 

## Installation

Use build_carla_devel.sh script to build this. You need to have a github account associated with Unreal Engine account as descried [here](https://docs.unrealengine.com/en-US/ProgrammingAndScripting/ProgrammingWithCPP/DownloadingSourceCode/index.html "").

```bash
$ ./build_carla_devel -h | [-b BRANCH] -u UNREAL_USER -p UNREAL_PASS
```

## Execution
run_carla_devel.sh: will open container in interactive mode with X support. Remember that first time you execute simulator environment with
```bash
$ make launch
```
Will build some artifacts and compile some shaders, when finished it's recommended to commit docker container to an image for later executions.

## Further Considerations
The build script will create a user with the same name that the image creator and with sudo privileges. The execution script will use this user to work in the container. 
The user's password inside container for 'sudo' tasks is 'docker'.
