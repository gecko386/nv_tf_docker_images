# Description
These are a set of docker container build to work with nvidia technologies.
Some containers are made to develop CV ML applications, using as base the [nvidia Tensorflow 2 container](https://ngc.nvidia.com/catalog/containers/nvidia:tensorflow ""). 

Nowadays this list includes:

* nv_cuda_devel: built from nvidia devel container but adding cmake and full CUDA 11.1 toolkit.
* nv_cuda_eclipse: built from nv_cuda_devel, adding eclipse IDE with CUDA plugins.

* nv_tf_cv: adding computer vision and machine learning python libraries. Prepared to run in interactive mode
    * opencv
    * scikit-learn
    * scikit-image
    * matplotlib
    * imlib
    * spyder3

* nv_tf_cv_jupyter: the same that above but starting a jupyter notebook on port localhost:8888
    * jupyter
    * notebook

## Installation

Use docker build to install image

```bash
$ docker build -t nv_cuda_devel/
$ docker build -t nv_cuda_eclipse/
$ docker build -t nv_tf_cv nv_tf_cv/
$ docker build -t nv_tf_cv_jupyter nv_tf_cv_jupyter/
```

## Execution

There are bash scripts to launch every container

* run_cuda_devel.sh: will open container in interactive.
* run_cuda_eclipse.sh: will open eclipse IDE with CUDA plugins installed.
* run_tf_cv.sh: will open container in interactive mode with X support, to execute spyder.
* run_tf_cv_jupyter.sh: will execute jupyter and prompt link to access from browser:

    ```bash
    $ ./run_tf_jupyter.sh 
    ...
        
        To access the notebook, open this file in a browser:
            file:///root/.local/share/jupyter/runtime/nbserver-6-open.html
        Or copy and paste one of these URLs:
            http://hostname:8888/?token=e768d35e36488a2290f4c6405d3e9a27324d97ac9078a582
        or http://127.0.0.1:8888/?token=e768d35e36488a2290f4c6405d3e9a27324d97ac9078a582

    ```
    
## Known issues

These containers needs docker to have nvidia GPU access. If you get an error like

``` bash
$ docker: Error response from daemon: could not select device driver "" with capabilities: [[gpu]]
```
Please, check [this link](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#docker "")
