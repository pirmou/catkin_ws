execute_process(COMMAND "/home/pierremoussa/catkin_ws/catkin/build/yujin_ocs/yocs_ar_pair_approach/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/pierremoussa/catkin_ws/catkin/build/yujin_ocs/yocs_ar_pair_approach/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
