cmake_minimum_required(VERSION 3.8)
project(fhnw_interfaces)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
# Specify the directory where the .msg files are located
set(msg_files_dir "${CMAKE_CURRENT_SOURCE_DIR}/msg")
set(srv_files_dir "${CMAKE_CURRENT_SOURCE_DIR}/srv")

# Collect all .msg files in the msg directory
file(GLOB _msg_files RELATIVE "${msg_files_dir}" "${msg_files_dir}/*.msg")
set(msg_files "")
foreach(_file ${_msg_files})
  list(APPEND msg_files "msg/${_file}")
endforeach()

# Collect all .srv files in the msg directory
file(GLOB _srv_files RELATIVE "${srv_files_dir}" "${srv_files_dir}/*.srv")
foreach(_file ${_srv_files})
  list(APPEND msg_files "srv/${_file}")
endforeach()

# Generate message files
rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  DEPENDENCIES geometry_msgs
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