#!/bin/bash
xhost +local:root
# shellcheck disable=SC2046
# shellcheck disable=SC2215
# shellcheck disable=SC2006
docker run -it --rm\
        --name=ros2humble \
        --shm-size=1g \
        --ulimit memlock=-1 \
        -e DISPLAY=$DISPLAY \
        -e XDG_RUNTIME_DIR=/tmp \
        -e QT_X11_NO_MITSHM=1 \
        -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
        -v /var/run/docker.sock:/var/run/docker.sock \
        -v /usr/bin/docker:/usr/bin/docker \
        --device=/dev/dri:/dev/dri \
        --device=/dev/video0 \
        --network=host \
        ros2humble \
        bash
