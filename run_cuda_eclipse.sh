#!/bin/bash
xhost +

docker run --shm-size=1g --ulimit memlock=-1 --ulimit stack=67108864 --gpus all -it --rm -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY -w $HOME --mount src=/home,target=/home,type=bind --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -p 8888:8888 -p 4040:4040 -u $(id -u ${USER}):$(id -g ${USER}) nv_cuda_eclipse
