#!/bin/bash

source /opt/ros/kinetic/setup.bash

echo ""
echo "This is a Shell script to set up the ceres robot"
echo "It will need Sudo access"

echo ""
echo "Setting up ceres workspace"
mkdir -p ~/ceres/src
cd ~/ceres
catkin_make

echo ""
echo "Setting up bringup functionality"
cd ~/ceres/src/
catkin_create_package ceres_bringup

echo ""
echo "Installing uos_tools"
git clone https://github.com/uos/uos_tools.git

echo ""
echo "Installing volksbot driver"
git clone https://github.com/uos/volksbot_driver.git

echo ""
echo "Cloning the Pico_Flexx_Driver from Github"
git clone https://github.com/juliangaal/pico_flexx_driver.git
cd pico_flexx_driver/royale

echo ""
echo "Copying the libroyale SDK to the pico_flexx_driver:"
echo "Extracting the files:"
cp ~/Downloads/libroyale.zip .
unzip libroyale.zip
unzip 20170127_royale_3.1.0.122.zip
unzip libroyale-3.1.0.122-LINUX-x86-64Bit.zip
rm *.zip
rm *.exe

echo ""
echo "Setting up USB details"
mv libroyale-3.1.0.122-LINUX-x86-64Bit/driver/udev/10-royale-ubuntu.rules /etc/udev/rules.d

echo ""
echo "catkin_make to apply changes"
cd ~/ceres/
catkin_make

echo "Completed"
