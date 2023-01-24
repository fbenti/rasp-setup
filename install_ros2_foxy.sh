sudo apt update && sudo apt install curl gnupg lsb-release

# set locale
# sudo apt update && sudo apt install locales
# sudo locale-gen en_US en_US.UTF-8
# sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
# export LANG=en_US.UTF-8

#enable ros2 apt rep
# sudo apt install software-properties-common
# sudo add-apt-repository universe

# add the ros2 gpg key
sudo apt update
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

sudo apt -y update
sudo apt -y upgrade

xargs sudo apt -y install <ros2_packages.txt
sudo pip3 install -U empy pyros-genmsg setuptools pandas

# Source ROS in profile script
echo 'source /opt/ros/foxy/setup.bash' | sudo tee --append ~/.profile