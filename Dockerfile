FROM osrf/ros:humble-desktop

# Enviromental variables
ENV DEBIAN_FRONTEND=noninteractive
ENV DISTRO=humble
ENV WORKDIR=/usr/src/ros2_ws

WORKDIR $WORKDIR

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
    && echo ". install/setup.bash" >> ~/.bashrc \
    && bash -c ". ~/.bashrc" \
    && bash -c ". /opt/ros/$DISTRO/setup.sh" \
    && colcon build --symlink-install \
    && bash -c ". /opt/ros/$DISTRO/setup.bash" \
    && bash -c ". install/setup.bash" \
    && touch /root/.Xauthority

