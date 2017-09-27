
# This is an auto generated Dockerfile for ros2:r2b3-ros1-bridge
# generated from docker_images/create_ros2_image.Dockerfile.em
FROM osrf/ros2:r2b3-core

# install ros2 packages
RUN apt-get update && apt-get install -y \
    ros-r2b3-ros1-bridge \
    && rm -rf /var/lib/apt/lists/*

# To have sublime-text 3
RUN apt-get update && apt-get install -y wget

RUN wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -

RUN apt-get install -y apt-transport-https

RUN echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list

RUN apt-get update && apt-get install -y sublime-text

RUN apt-get install -y libx11-6 libcanberra-gtk-module

# Enable hardware acceleration (on intel)
RUN apt-get update && apt-get -y install libgl1-mesa-glx libgl1-mesa-dri mesa-utils

RUN mkdir -p /root/ros2

# Install tools
RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/ros2/examples /root/ros2/examples

RUN apt-get update && apt-get install -y ipython

RUN mkdir -p "/root/.config/sublime-text-3/Installed Packages"

RUN wget https://packagecontrol.io/Package%20Control.sublime-package -O "/root/.config/sublime-text-3/Installed Packages/Package Control.sublime-package"

RUN mkdir -p "/root/.config/sublime-text-3/Packages/User"

RUN wget https://gist.githubusercontent.com/awesomebytes/d8ae8836667cbac8e764b953a16d8185/raw/23a15e5a4815acc6ac8e0a7e0bf0b19554e14543/Package%2520Control.sublime-settings -O "/root/.config/sublime-text-3/Packages/User/Package Control.sublime-settings"

