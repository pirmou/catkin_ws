# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "turtle_sim_rand: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(turtle_sim_rand_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pierremoussa/catkin_ws/src/turtle_sim_rand/srv/hit_bool.srv" NAME_WE)
add_custom_target(_turtle_sim_rand_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtle_sim_rand" "/home/pierremoussa/catkin_ws/src/turtle_sim_rand/srv/hit_bool.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(turtle_sim_rand
  "/home/pierremoussa/catkin_ws/src/turtle_sim_rand/srv/hit_bool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtle_sim_rand
)

### Generating Module File
_generate_module_cpp(turtle_sim_rand
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtle_sim_rand
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(turtle_sim_rand_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(turtle_sim_rand_generate_messages turtle_sim_rand_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pierremoussa/catkin_ws/src/turtle_sim_rand/srv/hit_bool.srv" NAME_WE)
add_dependencies(turtle_sim_rand_generate_messages_cpp _turtle_sim_rand_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtle_sim_rand_gencpp)
add_dependencies(turtle_sim_rand_gencpp turtle_sim_rand_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtle_sim_rand_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(turtle_sim_rand
  "/home/pierremoussa/catkin_ws/src/turtle_sim_rand/srv/hit_bool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtle_sim_rand
)

### Generating Module File
_generate_module_eus(turtle_sim_rand
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtle_sim_rand
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(turtle_sim_rand_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(turtle_sim_rand_generate_messages turtle_sim_rand_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pierremoussa/catkin_ws/src/turtle_sim_rand/srv/hit_bool.srv" NAME_WE)
add_dependencies(turtle_sim_rand_generate_messages_eus _turtle_sim_rand_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtle_sim_rand_geneus)
add_dependencies(turtle_sim_rand_geneus turtle_sim_rand_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtle_sim_rand_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(turtle_sim_rand
  "/home/pierremoussa/catkin_ws/src/turtle_sim_rand/srv/hit_bool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtle_sim_rand
)

### Generating Module File
_generate_module_lisp(turtle_sim_rand
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtle_sim_rand
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(turtle_sim_rand_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(turtle_sim_rand_generate_messages turtle_sim_rand_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pierremoussa/catkin_ws/src/turtle_sim_rand/srv/hit_bool.srv" NAME_WE)
add_dependencies(turtle_sim_rand_generate_messages_lisp _turtle_sim_rand_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtle_sim_rand_genlisp)
add_dependencies(turtle_sim_rand_genlisp turtle_sim_rand_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtle_sim_rand_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(turtle_sim_rand
  "/home/pierremoussa/catkin_ws/src/turtle_sim_rand/srv/hit_bool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtle_sim_rand
)

### Generating Module File
_generate_module_nodejs(turtle_sim_rand
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtle_sim_rand
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(turtle_sim_rand_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(turtle_sim_rand_generate_messages turtle_sim_rand_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pierremoussa/catkin_ws/src/turtle_sim_rand/srv/hit_bool.srv" NAME_WE)
add_dependencies(turtle_sim_rand_generate_messages_nodejs _turtle_sim_rand_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtle_sim_rand_gennodejs)
add_dependencies(turtle_sim_rand_gennodejs turtle_sim_rand_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtle_sim_rand_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(turtle_sim_rand
  "/home/pierremoussa/catkin_ws/src/turtle_sim_rand/srv/hit_bool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtle_sim_rand
)

### Generating Module File
_generate_module_py(turtle_sim_rand
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtle_sim_rand
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(turtle_sim_rand_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(turtle_sim_rand_generate_messages turtle_sim_rand_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pierremoussa/catkin_ws/src/turtle_sim_rand/srv/hit_bool.srv" NAME_WE)
add_dependencies(turtle_sim_rand_generate_messages_py _turtle_sim_rand_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtle_sim_rand_genpy)
add_dependencies(turtle_sim_rand_genpy turtle_sim_rand_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtle_sim_rand_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtle_sim_rand)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtle_sim_rand
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(turtle_sim_rand_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET turtle_sim_rand_generate_messages_cpp)
  add_dependencies(turtle_sim_rand_generate_messages_cpp turtle_sim_rand_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtle_sim_rand)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtle_sim_rand
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(turtle_sim_rand_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET turtle_sim_rand_generate_messages_eus)
  add_dependencies(turtle_sim_rand_generate_messages_eus turtle_sim_rand_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtle_sim_rand)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtle_sim_rand
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(turtle_sim_rand_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET turtle_sim_rand_generate_messages_lisp)
  add_dependencies(turtle_sim_rand_generate_messages_lisp turtle_sim_rand_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtle_sim_rand)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtle_sim_rand
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(turtle_sim_rand_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET turtle_sim_rand_generate_messages_nodejs)
  add_dependencies(turtle_sim_rand_generate_messages_nodejs turtle_sim_rand_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtle_sim_rand)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtle_sim_rand\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtle_sim_rand
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(turtle_sim_rand_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET turtle_sim_rand_generate_messages_py)
  add_dependencies(turtle_sim_rand_generate_messages_py turtle_sim_rand_generate_messages_py)
endif()
