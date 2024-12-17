# Install script for directory: /home/benson/projects/rosdemo/ros_advance/src/action_communication

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/action_communication/action" TYPE FILE FILES "/home/benson/projects/rosdemo/ros_advance/src/action_communication/action/AddInts.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/action_communication/msg" TYPE FILE FILES
    "/home/benson/projects/rosdemo/ros_advance/devel/share/action_communication/msg/AddIntsAction.msg"
    "/home/benson/projects/rosdemo/ros_advance/devel/share/action_communication/msg/AddIntsActionGoal.msg"
    "/home/benson/projects/rosdemo/ros_advance/devel/share/action_communication/msg/AddIntsActionResult.msg"
    "/home/benson/projects/rosdemo/ros_advance/devel/share/action_communication/msg/AddIntsActionFeedback.msg"
    "/home/benson/projects/rosdemo/ros_advance/devel/share/action_communication/msg/AddIntsGoal.msg"
    "/home/benson/projects/rosdemo/ros_advance/devel/share/action_communication/msg/AddIntsResult.msg"
    "/home/benson/projects/rosdemo/ros_advance/devel/share/action_communication/msg/AddIntsFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/action_communication/cmake" TYPE FILE FILES "/home/benson/projects/rosdemo/ros_advance/build/action_communication/catkin_generated/installspace/action_communication-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/benson/projects/rosdemo/ros_advance/devel/include/action_communication")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/benson/projects/rosdemo/ros_advance/devel/share/roseus/ros/action_communication")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/benson/projects/rosdemo/ros_advance/devel/share/common-lisp/ros/action_communication")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/benson/projects/rosdemo/ros_advance/devel/share/gennodejs/ros/action_communication")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/benson/projects/rosdemo/ros_advance/devel/lib/python3/dist-packages/action_communication")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/benson/projects/rosdemo/ros_advance/devel/lib/python3/dist-packages/action_communication")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/benson/projects/rosdemo/ros_advance/build/action_communication/catkin_generated/installspace/action_communication.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/action_communication/cmake" TYPE FILE FILES "/home/benson/projects/rosdemo/ros_advance/build/action_communication/catkin_generated/installspace/action_communication-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/action_communication/cmake" TYPE FILE FILES
    "/home/benson/projects/rosdemo/ros_advance/build/action_communication/catkin_generated/installspace/action_communicationConfig.cmake"
    "/home/benson/projects/rosdemo/ros_advance/build/action_communication/catkin_generated/installspace/action_communicationConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/action_communication" TYPE FILE FILES "/home/benson/projects/rosdemo/ros_advance/src/action_communication/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/action_communication" TYPE PROGRAM FILES "/home/benson/projects/rosdemo/ros_advance/build/action_communication/catkin_generated/installspace/action_server_p.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/action_communication" TYPE PROGRAM FILES "/home/benson/projects/rosdemo/ros_advance/build/action_communication/catkin_generated/installspace/action_client_p.py")
endif()

