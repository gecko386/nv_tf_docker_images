#!/bin/bash

docker run --shm-size=1g --ulimit memlock=-1 --ulimit stack=6710886 --gpus all -w $HOME --mount src=/home,target=/home,type=bind --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -p 8888:8888 nv_tf_cv_jupyter jupyter notebook --port=8888 --no-browser --ip=0.0.0.0 --allow-root --notebook-dir=$HOME
