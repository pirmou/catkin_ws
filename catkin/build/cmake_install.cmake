# Install script for directory: /home/pierremoussa/catkin_ws/catkin/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/opt/ros/melodic")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/ros/melodic/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/ros/melodic" TYPE PROGRAM FILES "/home/pierremoussa/catkin_ws/catkin/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/ros/melodic/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/ros/melodic" TYPE PROGRAM FILES "/home/pierremoussa/catkin_ws/catkin/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/ros/melodic/setup.bash;/opt/ros/melodic/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/ros/melodic" TYPE FILE FILES
    "/home/pierremoussa/catkin_ws/catkin/build/catkin_generated/installspace/setup.bash"
    "/home/pierremoussa/catkin_ws/catkin/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/ros/melodic/setup.sh;/opt/ros/melodic/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/ros/melodic" TYPE FILE FILES
    "/home/pierremoussa/catkin_ws/catkin/build/catkin_generated/installspace/setup.sh"
    "/home/pierremoussa/catkin_ws/catkin/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/ros/melodic/setup.zsh;/opt/ros/melodic/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/ros/melodic" TYPE FILE FILES
    "/home/pierremoussa/catkin_ws/catkin/build/catkin_generated/installspace/setup.zsh"
    "/home/pierremoussa/catkin_ws/catkin/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/ros/melodic/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/ros/melodic" TYPE FILE FILES "/home/pierremoussa/catkin_ws/catkin/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/pierremoussa/catkin_ws/catkin/build/gtest/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/kobuki/kobuki/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/kobuki/kobuki_capabilities/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/kobuki_desktop/kobuki_desktop/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/kobuki_desktop/kobuki_gazebo/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/kobuki/kobuki_rapps/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/kobuki_desktop/kobuki_rviz_launchers/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/kobuki_msgs/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/turtlebot/turtlebot/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/turtlebot_arm/turtlebot_arm/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/turtlebot_arm/turtlebot_arm_bringup/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/turtlebot_arm/turtlebot_arm_description/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/turtlebot_arm/turtlebot_arm_moveit_demos/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/turtlebot/turtlebot_bringup/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/turtlebot/turtlebot_capabilities/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/turtlebot_interactions/turtlebot_dashboard/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/turtlebot_simulator/turtlebot_gazebo/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/turtlebot_interactions/turtlebot_interactions/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/turtlebot_interactions/turtlebot_rviz_launchers/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/turtlebot_simulator/turtlebot_simulator/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/turtlebot_simulator/turtlebot_stage/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/turtlebot_simulator/turtlebot_stdr/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/kobuki/kobuki_keyop/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/kobuki/kobuki_auto_docking/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/kobuki/kobuki_bumper2pc/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/kobuki_desktop/kobuki_dashboard/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/turtlebot_arm/turtlebot_arm_kinect_calibration/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/turtlebot_interactions/turtlebot_interactive_markers/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/turtlebot_msgs/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/turtlebot_navigation/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/turtlebot/turtlebot_teleop/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/kobuki_desktop/kobuki_gazebo_plugins/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/turtlebot_arm/turtlebot_arm_ikfast_plugin/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/turtlebot_arm/turtlebot_arm_block_manipulation/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/kobuki/kobuki_description/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/turtlebot_arm/turtlebot_arm_moveit_config/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/turtlebot/turtlebot_description/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/yujin_ocs/yocs_ar_pair_approach/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/yujin_ocs/yocs_cmd_vel_mux/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/yujin_ocs/yocs_controllers/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/kobuki/kobuki_controller_tutorial/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/kobuki/kobuki_random_walker/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/kobuki/kobuki_safety_controller/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/yujin_ocs/yocs_keyop/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/yujin_ocs/yocs_localization_manager/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/yujin_ocs/yocs_math_toolkit/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/turtlebot_arm/turtlebot_arm_object_manipulation/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/yujin_ocs/yocs_ar_marker_tracking/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/yujin_ocs/yocs_diff_drive_pose_controller/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/yujin_ocs/yocs_ar_pair_tracking/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/yujin_ocs/yocs_joyop/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/yujin_ocs/yocs_navi_toolkit/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/yujin_ocs/yocs_navigator/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/yujin_ocs/yocs_rapps/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/yujin_ocs/yocs_safety_controller/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/yujin_ocs/yocs_velocity_smoother/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/kobuki/kobuki_node/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/kobuki/kobuki_testsuite/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/kobuki_desktop/kobuki_qtestsuite/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/yujin_ocs/yocs_virtual_sensor/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/yujin_ocs/yocs_waypoint_provider/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/yujin_ocs/yocs_waypoints_navi/cmake_install.cmake")
  include("/home/pierremoussa/catkin_ws/catkin/build/yujin_ocs/yujin_ocs/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/pierremoussa/catkin_ws/catkin/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
