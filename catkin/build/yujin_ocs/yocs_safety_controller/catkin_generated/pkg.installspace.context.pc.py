# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "ecl_threads;geometry_msgs;nodelet;pluginlib;sensor_msgs;std_msgs;roscpp;yocs_controllers".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lyocs_safety_controller_nodelet".split(';') if "-lyocs_safety_controller_nodelet" != "" else []
PROJECT_NAME = "yocs_safety_controller"
PROJECT_SPACE_DIR = "/opt/ros/melodic"
PROJECT_VERSION = "0.12.1"
