# Description
This container adds to NVIDIA's cuda 11.1 devel container the cuda 11 toolkit. 

## Installation
Use docker build to install image

```bash
$ docker build -t nv_cuda_devel build/
```

## Execution
run_cuda_devel.sh: will open container in interactive mode.

## Known issues

These containers needs docker to have nvidia GPU access. If you get an error like

``` bash
$ docker: Error response from daemon: could not select device driver "" with capabilities: [[gpu]]
```
Please, check [this link](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#docker "")
