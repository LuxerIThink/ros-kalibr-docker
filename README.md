# Ros Docker Template

This repository offers an easily deployable ROS Docker Template, streamlining your ROS development environment setup.

## Available branches

Choose from the following branches based on your ROS version needs:

- ROS 2 Humble

## Key features

Simplify your ROS Docker experience with these key features:

- Launch with a single command `docker compose up`
- Centralized management of apt-get packages in `packages.txt`
- Convenient management of Python libraries in `requirements.txt`
- Predefined workspace folder
- Automated building of C++ packages
- ROS pre-sourced for immediate use
- Helpful ROS command hints provided
- Fix for not showing ros windows: `fix_display.sh`

## Quick guide

### Build and run

Start your container effortlessly:

```
docker compose up
```

Connect to the container's console:

```
docker exec ros2humble kitty
```

### ROS 2 Hello World

In one terminal, execute:

```
ros2 run turtlesim turtlesim_node
```

In another, run:

```
ros2 run turtlesim turtle_teleop_key
```

With the second terminal active, control the turtle using arrow keys in a new window. <br>

For further instructions, refer to the official [ROS 2 Humble Wiki](https://docs.ros.org/en/humble/index.html).

### Quick docker tips

*(primarily for kitty/linux shortcuts)*

Leave from container:

<kbd> <br> CTRL <br> </kbd> + <kbd> <br> D <br> </kbd>

Terminate an active process:

<kbd> <br> CTRL <br> </kbd> + <kbd> <br> C <br> </kbd>

Open a new terminal:

<kbd> <br> CTRL <br> </kbd> + <kbd> <br> SHIFT <br> </kbd> + <kbd> <br> N <br> </kbd>

Open a new tab:

<kbd> <br> CTRL <br> </kbd> + <kbd> <br> SHIFT <br> </kbd> + <kbd> <br> T <br> </kbd>

Switch tabs:

<kbd> <br> CTRL <br> </kbd> + <kbd> <br> SHIFT <br> </kbd> + <kbd> <br> -> <br> </kbd>

or

<kbd> <br> CTRL <br> </kbd> + <kbd> <br> SHIFT <br> </kbd> + <kbd> <br> <- <br> </kbd>

### Purpose

Designed to cater to students specializing in Robotics and Autonomous Systems at Poznan University of Technology.
