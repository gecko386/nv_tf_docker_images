#!/bin/bash

docker run --shm-size=1g --ulimit memlock=-1 --ulimit stack=6710886 --gpus all --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -p 8888:8888 nv_tf_cv_jupyter
