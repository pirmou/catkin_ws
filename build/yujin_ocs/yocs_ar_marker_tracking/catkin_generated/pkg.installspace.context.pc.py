# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include".split(';') if "${prefix}/include;/usr/include" != "" else []
PROJECT_CATKIN_DEPENDS = "ar_track_alvar_msgs;roscpp;geometry_msgs;sensor_msgs;yocs_math_toolkit".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lyocs_ar_marker_tracking;/usr/lib/x86_64-linux-gnu/libboost_system.so;-lyaml-cpp".split(';') if "-lyocs_ar_marker_tracking;/usr/lib/x86_64-linux-gnu/libboost_system.so;-lyaml-cpp" != "" else []
PROJECT_NAME = "yocs_ar_marker_tracking"
PROJECT_SPACE_DIR = "/opt/ros/melodic"
PROJECT_VERSION = "0.12.1"
