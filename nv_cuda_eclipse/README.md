# Description
This container is built over nv_cuda_devel to execute eclipse IDE with nvidia plugins. NVIDIA's eclipse nsight has been discontinued so now, for CUDA 11 development this is the new official IDE toolkit.

## Installation
Use docker build to install image

```bash
$ docker build -t nv_cuda_eclipse build/
```

## Execution
run_cuda_eclipse.sh: will open container and execute eclipse IDE.

## Known issues
This container needs docker to have nvidia GPU access. If you get an error like

``` bash
$ docker: Error response from daemon: could not select device driver "" with capabilities: [[gpu]]
```
Please, check [this link](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#docker "")


This container runs with root privileges on it and with '/home' folder mounted.
