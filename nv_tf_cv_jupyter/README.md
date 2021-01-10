# Description

This is a Docker container build using as base the [nvidia Tensorflow 2 container](https://ngc.nvidia.com/catalog/containers/nvidia:tensorflow "") and adding 
adding computer vision and machine learning python libraries. It will execute a jupyter notebook on port localhost:8888

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
$ docker build -t nv_tf_cv_jupyter build/
```

## Execution
run_tf_cv_jupyter.sh: will execute jupyter and prompt link to access from browser:

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
