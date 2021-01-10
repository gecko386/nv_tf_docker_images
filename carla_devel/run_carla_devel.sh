#!/bin/bash
xhost +

docker run --gpus all -p 2000-2002:2000-2002 --runtime=nvidia -it  -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY -w /carla_sim/carla carla_devel
