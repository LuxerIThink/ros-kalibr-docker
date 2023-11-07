# Ros 2 Humble Docker

It'a a easy to use ROS 2 Humble in Docker Compose for Linux system.

Created for Robotics and Autonomus Systems specialization
students in Poznan University of Technology.

## Key features

- Easy way to launch
- All apt-get packages in one place: packages.txt
- All python libraries in one place: requirements.txt
- Pre-sourced ROS
- Working command hints

## Quick guide

### Build and run

Build and run container:
```
docker compose up
```

Attach console to container:
```
docker exec ros2humble kitty
```

### Moving in container shortcuts
(mostly kitty / linux shortcuts)

Leave container:

<kbd> <br> CTRL <br> </kbd> + <kbd> <br> D <br> </kbd>

Kill active proces:

<kbd> <br> CTRL <br> </kbd> + <kbd> <br> C <br> </kbd>

Create new terminal:

<kbd> <br> CTRL <br> </kbd> + <kbd> <br> SHIFT <br> </kbd> + <kbd> <br> N <br> </kbd>

Create new tab:

<kbd> <br> CTRL <br> </kbd> + <kbd> <br> SHIFT <br> </kbd> + <kbd> <br> T <br> </kbd>

Change tab:

<kbd> <br> CTRL <br> </kbd> + <kbd> <br> SHIFT <br> </kbd> + <kbd> <br> -> <br> </kbd>

or

<kbd> <br> CTRL <br> </kbd> + <kbd> <br> SHIFT <br> </kbd> + <kbd> <br> <- <br> </kbd>

### ROS 2 Hello World

In one tab run:

```
ros2 run turtlesim turtlesim_node
```

in another run:

```
ros2 run turtlesim turtle_teleop_key
```

While you are focused in second tab you can move turtle with arrows in new window. <br>
<br>

Rest instruction you find in official [ROS 2 Humble Wiki](https://docs.ros.org/en/humble/index.html).

