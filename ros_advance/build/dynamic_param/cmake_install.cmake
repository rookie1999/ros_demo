# Install script for directory: /home/benson/projects/rosdemo/ros_advance/src/dynamic_param

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/benson/projects/rosdemo/ros_advance/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dynamic_param" TYPE FILE FILES "/home/benson/projects/rosdemo/ros_advance/devel/include/dynamic_param/drConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/dynamic_param" TYPE FILE FILES "/home/benson/projects/rosdemo/ros_advance/devel/lib/python3/dist-packages/dynamic_param/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/benson/projects/rosdemo/ros_advance/devel/lib/python3/dist-packages/dynamic_param/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/dynamic_param" TYPE DIRECTORY FILES "/home/benson/projects/rosdemo/ros_advance/devel/lib/python3/dist-packages/dynamic_param/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/benson/projects/rosdemo/ros_advance/build/dynamic_param/catkin_generated/installspace/dynamic_param.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dynamic_param/cmake" TYPE FILE FILES
    "/home/benson/projects/rosdemo/ros_advance/build/dynamic_param/catkin_generated/installspace/dynamic_paramConfig.cmake"
    "/home/benson/projects/rosdemo/ros_advance/build/dynamic_param/catkin_generated/installspace/dynamic_paramConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dynamic_param" TYPE FILE FILES "/home/benson/projects/rosdemo/ros_advance/src/dynamic_param/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/dynamic_param" TYPE PROGRAM FILES "/home/benson/projects/rosdemo/ros_advance/build/dynamic_param/catkin_generated/installspace/dr_server_p.py")
endif()

