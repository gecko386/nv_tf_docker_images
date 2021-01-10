# Description

This is a Docker container build using as base the [nvidia Tensorflow 2 container](https://ngc.nvidia.com/catalog/containers/nvidia:tensorflow "") and adding 
adding computer vision and machine learning python libraries. Prepared to run in interactive mode.

The libraries are:

* opencv
* scikit-learn
* scikit-image
* matplotlib
* imlib
* sympy

The image build also includes spyder3 working environment

## Installation

Use docker build to install image

```bash
$ docker build -t nv_tf_cv build/
```

## Execution
run_tf_cv.sh: will open container in interactive mode with X support, to execute spyder.
    
## Known issues

These containers needs docker to have nvidia GPU access. If you get an error like

``` bash
$ docker: Error response from daemon: could not select device driver "" with capabilities: [[gpu]]
```
Please, check [this link](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#docker "")
