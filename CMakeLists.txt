cmake_minimum_required(VERSION 3.10)
project(fhnw_interfaces)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(trajectory_msgs REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(action_msgs REQUIRED)
# Specify the directory where the .msg/.srv/.action files are located
set(msg_files_dir    "${CMAKE_CURRENT_SOURCE_DIR}/msg")
set(srv_files_dir    "${CMAKE_CURRENT_SOURCE_DIR}/srv")
set(action_files_dir "${CMAKE_CURRENT_SOURCE_DIR}/action")

# Collect all .msg files in the msg directory
file(GLOB _msg_files RELATIVE "${msg_files_dir}" "${msg_files_dir}/*.msg")
set(msg_files "")
foreach(_file ${_msg_files})
  list(APPEND msg_files "msg/${_file}")
endforeach()

# Collect all .srv files in the srv directory
file(GLOB _srv_files RELATIVE "${srv_files_dir}" "${srv_files_dir}/*.srv")
foreach(_file ${_srv_files})
  list(APPEND msg_files "srv/${_file}")
endforeach()

# Collect all .action files in the action directory
file(GLOB _action_files RELATIVE "${action_files_dir}" "${action_files_dir}/*.action")
foreach(_file ${_action_files})
  list(APPEND msg_files "action/${_file}")
endforeach()

# Generate message/service/action files
rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  DEPENDENCIES geometry_msgs trajectory_msgs builtin_interfaces action_msgs
)


if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the following line skips the linter which checks for copyrights
  # uncomment the line when a copyright and license is not present in all source files
  #set(ament_cmake_copyright_FOUND TRUE)
  # the following line skips cpplint (only works in a git repo)
  # uncomment the line when this package is not in a git repo
  #set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

ament_export_dependencies(rosidl_default_runtime)

ament_package()