# Ros 1 Noetic Devel Docker Template

This repository offers an easily deployable ROS 1 Noetic Devel Docker Template, streamlining your ROS development environment setup.

## Key features

Simplify your ROS Docker experience with these key features:

- Launch with a single command `docker compose up`
- Equipped with Python 3.8
- Centralized management of apt-get packages in `packages.txt`
- Convenient management of Python libraries in `requirements.txt`
- Predefined workspace folder
- Automated build of C++ packages when building container
- ROS pre-sourced for immediate use
- Helpful ROS command hints provided
- Fix for not showing ros windows: `fix_display.sh`

## Quick guide

### Build and run

Start your container effortlessly:

```bash
docker compose up
```

Connect to the container's console:

```bash
docker exec -it noetic kitty
```

### ROS 1 Hello World

In one terminal, execute:

```bash
roscore
```

In another

```bash
rosrun turtlesim turtlesim_node
```

and in last, run:

```bash
rosrun turtlesim turtle_teleop_key
```

With the last terminal active, control the turtle using arrow keys in a new window.

For further instructions, refer to the official
[ROS Wiki](https://wiki.ros.org/ROS/Tutorials)
and
[Example tutorials](https://github.com/ros/ros_tutorials/tree/noetic-devel)

### Tests

Tested with
- above turtlebot hello world
- packages: roscpp_tutorials and rospy_tutorials from [ros_tutorials](https://github.com/ros/ros_tutorials/tree/noetic-devel)

### Quick docker tips

primarily kitty/linux shortcuts

Leave from container:

<kbd> <br> CTRL <br> </kbd> + <kbd> <br> D <br> </kbd>

Terminate an active process:

<kbd> <br> CTRL <br> </kbd> + <kbd> <br> C <br> </kbd>

Open a new terminal:

<kbd> <br> CTRL <br> </kbd> + <kbd> <br> SHIFT <br> </kbd> + <kbd> <br> N <br> </kbd>

Open a new tab:

<kbd> <br> CTRL <br> </kbd> + <kbd> <br> SHIFT <br> </kbd> + <kbd> <br> T <br> </kbd>

Switch tabs:

<kbd> <br> CTRL <br> </kbd> + <kbd> <br> SHIFT <br> </kbd> + <kbd> <br> → <br> </kbd>

or

<kbd> <br> CTRL <br> </kbd> + <kbd> <br> SHIFT <br> </kbd> + <kbd> <br> ← <br> </kbd>

### Purpose

Designed to cater to students specializing in Robotics and Autonomous Systems at Poznan University of Technology.
