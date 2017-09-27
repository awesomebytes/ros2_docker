#!/bin/bash

xhost local:root
#touch /tmp/.docker.xauth
#xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f /tmp/.docker.xauth nmerge -
docker run -it --rm --net=host -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY --device /dev/dri/card0:/dev/dri/card0 --name ros2test ros2 /bin/bash
# mount the X11 socket
# pass the display
# -v $HOME/myfolder:/root \ # optional, but nice
# --device /dev/snd \ # so we have sound
    
