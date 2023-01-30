mkdir -p ~/px4_ros_com_ros2/src
cd ~/px4_ros_com_ros2/src

git clone -b release/1.13 https://github.com/PX4/px4_ros_com.git ~/px4_ros_com_ros2/src/px4_ros_com
git clone -b release/1.13 https://github.com/PX4/px4_msgs.git ~/px4_ros_com_ros2/src/px4_msgs
cd ~/px4_ros_com_ros2/src/px4_ros_com/scripts
./build_ros2_workspace.bash

echo 'source /px4_ros_com/install/setup.bash' | sudo tee --append ~/.profile