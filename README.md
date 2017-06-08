# ceres

## Necessary packages
* sick_tim
* uos_tools
* pico_flexx_driver
* uos_diff_drive

## Status
- [x] picoflexx driver </br>
- [x] volksbot driver </br>
- [x] teleop from uos_tools </br>

## TODO
- [ ] Install from official repo `sudo apt search ros kinetic ...` and install found package with `sudo apt install ros-kinetic-xxx-xx`. Files like these will be dumped /opt/ros/kinetic/lib</br>  
- [ ] Install script via `rosinstall`
- [ ] Fix sudo rights issue after install script for catkin_make </br>
- [ ] revise file structure in ceres workspace to accomodate for multiple layers and/or projects </br>
- [ ] URDF Models </br>

## Notes
* Clone sick_tim manually, udev not in official repo (pull request!)