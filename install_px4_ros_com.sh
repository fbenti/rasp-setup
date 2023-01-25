# create workspace directory
mkdir -p ~/px4_ros_com_ros2/src

#clone ros2 bridge packages
git clone https://github.com/PX4/px4_ros_com.git ~/px4_ros_com_ros2/src/px4_ros_com
git clone https://github.com/PX4/px4_msgs.git ~/px4_ros_com_ros2/src/px4_msgs

# Use the build_ros2_workspace.bash script to build the ROS 2 workspace
cd ~/px4_ros_com_ros2/src/px4_ros_com/scripts
source build_ros2_workspace.bash