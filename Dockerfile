FROM osrf/ros:foxy-desktop

# Enviromental variables
ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /usr/src/ros2_ws

# Setup linux environment
# Install packages from packages.txt
COPY packages.txt .
RUN echo "Installing dependencies..." \
    && apt update -yq \
    && apt-get update -yq \
    && apt-get install -yq --no-install-recommends $(cat packages.txt) \
    && rm -rf /var/lib/apt/lists/*

# Setup python environement
# Install python libraries from requirements.txt
COPY requirements.txt .
RUN echo "Installing python libraries..." \
    && pip3 install --no-cache-dir -r requirements.txt

# Create ros enviroment
COPY user_files  .
RUN echo "Building ros environment ..." \
    && . /opt/ros/$ROS_DISTRO/setup.sh \
    && colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release -DCMAKE_EXPORT_COMPILE_COMMANDS=On \
    && echo "source install/setup.bash" >> ~/.bashrc \
    && bash -c "source ~/.bashrc" \
    && touch /root/.Xauthority

