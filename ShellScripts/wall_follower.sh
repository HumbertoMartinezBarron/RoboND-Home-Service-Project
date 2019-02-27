#!/bin/sh

dir=/home/nvidia/catkin_ws/src

xterm -e "cd ~/catkin_ws; source devel/setup.bash; export ROBOT_INITIAL_POSE='-y -1.5 -Y 1.570796' && roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$dir/World/appartment_top_floor.world" &

sleep 10

xterm -e "cd ~/catkin_ws; source devel/setup.bash; roslaunch wall_follower gmapping_custom_params.launch" &

sleep 5

xterm -e "cd ~/catkin_ws; source devel/setup.bash; roslaunch turtlebot_rviz_launchers view_navigation.launch" &

sleep 5

xterm -e "cd ~/catkin_ws; source devel/setup.bash; rosrun wall_follower wall_follower"
