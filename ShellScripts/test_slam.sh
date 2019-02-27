#!/bin/sh

xterm -e "cd ~/catkin_ws; source devel/setup.bash; export INITIAL_ROBOT_POSE='-y -1.5 -Y 1.57079636' && roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=/home/nvidia/catkin_ws/src/World/appartment_top_floor.world" &

sleep 10

xterm -e "cd ~/catkin_ws; source devel/setup.bash; roslaunch turtlebot_gazebo gmapping_demo.launch" &

sleep 5

xterm -e "cd ~/catkin_ws; source devel/setup.bash; roslaunch turtlebot_rviz_launchers view_navigation.launch" &

sleep 5

xterm -e "cd ~/catkin_ws; source devel/setup.bash; roslaunch turtlebot_teleop keyboard_teleop.launch"
