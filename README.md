# Ros Kalibr Docker Template

This repository offers an easily deployable ROS 1 Noetic Devel with Kalibr Docker Template, streamlining your ROS development environment setup.

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
- Build in [Kalibr](https://github.com/ori-drs/kalibr)

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

### License

This project incorporates the Kalibr library, which is governed by the [BSD License](https://github.com/ori-drs/kalibr/blob/noetic-devel/LICENSE). Therefore, the Kalibr portion of this project is also licensed under the BSD License.

### Purpose

Designed to cater to students specializing in Robotics and Autonomous Systems at Poznan University of Technology.
