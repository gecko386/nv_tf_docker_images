#!/bin/bash
xhost +

docker run --shm-size=1g --ulimit memlock=-1 --ulimit stack=6710886 --gpus all -it  -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY -w $HOME --mount src=/home,target=/home,type=bind --cap-add=SYS_PTRACE --security-opt seccomp=unconfined nv_tf_cv
