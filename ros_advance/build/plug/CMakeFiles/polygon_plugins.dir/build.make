# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/benson/projects/rosdemo/ros_advance/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/benson/projects/rosdemo/ros_advance/build

# Include any dependencies generated for this target.
include plug/CMakeFiles/polygon_plugins.dir/depend.make

# Include the progress variables for this target.
include plug/CMakeFiles/polygon_plugins.dir/progress.make

# Include the compile flags for this target's objects.
include plug/CMakeFiles/polygon_plugins.dir/flags.make

plug/CMakeFiles/polygon_plugins.dir/src/polygon_plugins.cpp.o: plug/CMakeFiles/polygon_plugins.dir/flags.make
plug/CMakeFiles/polygon_plugins.dir/src/polygon_plugins.cpp.o: /home/benson/projects/rosdemo/ros_advance/src/plug/src/polygon_plugins.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/benson/projects/rosdemo/ros_advance/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object plug/CMakeFiles/polygon_plugins.dir/src/polygon_plugins.cpp.o"
	cd /home/benson/projects/rosdemo/ros_advance/build/plug && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/polygon_plugins.dir/src/polygon_plugins.cpp.o -c /home/benson/projects/rosdemo/ros_advance/src/plug/src/polygon_plugins.cpp

plug/CMakeFiles/polygon_plugins.dir/src/polygon_plugins.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/polygon_plugins.dir/src/polygon_plugins.cpp.i"
	cd /home/benson/projects/rosdemo/ros_advance/build/plug && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/benson/projects/rosdemo/ros_advance/src/plug/src/polygon_plugins.cpp > CMakeFiles/polygon_plugins.dir/src/polygon_plugins.cpp.i

plug/CMakeFiles/polygon_plugins.dir/src/polygon_plugins.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/polygon_plugins.dir/src/polygon_plugins.cpp.s"
	cd /home/benson/projects/rosdemo/ros_advance/build/plug && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/benson/projects/rosdemo/ros_advance/src/plug/src/polygon_plugins.cpp -o CMakeFiles/polygon_plugins.dir/src/polygon_plugins.cpp.s

# Object files for target polygon_plugins
polygon_plugins_OBJECTS = \
"CMakeFiles/polygon_plugins.dir/src/polygon_plugins.cpp.o"

# External object files for target polygon_plugins
polygon_plugins_EXTERNAL_OBJECTS =

/home/benson/projects/rosdemo/ros_advance/devel/lib/libpolygon_plugins.so: plug/CMakeFiles/polygon_plugins.dir/src/polygon_plugins.cpp.o
/home/benson/projects/rosdemo/ros_advance/devel/lib/libpolygon_plugins.so: plug/CMakeFiles/polygon_plugins.dir/build.make
/home/benson/projects/rosdemo/ros_advance/devel/lib/libpolygon_plugins.so: plug/CMakeFiles/polygon_plugins.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/benson/projects/rosdemo/ros_advance/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library /home/benson/projects/rosdemo/ros_advance/devel/lib/libpolygon_plugins.so"
	cd /home/benson/projects/rosdemo/ros_advance/build/plug && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/polygon_plugins.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
plug/CMakeFiles/polygon_plugins.dir/build: /home/benson/projects/rosdemo/ros_advance/devel/lib/libpolygon_plugins.so

.PHONY : plug/CMakeFiles/polygon_plugins.dir/build

plug/CMakeFiles/polygon_plugins.dir/clean:
	cd /home/benson/projects/rosdemo/ros_advance/build/plug && $(CMAKE_COMMAND) -P CMakeFiles/polygon_plugins.dir/cmake_clean.cmake
.PHONY : plug/CMakeFiles/polygon_plugins.dir/clean

plug/CMakeFiles/polygon_plugins.dir/depend:
	cd /home/benson/projects/rosdemo/ros_advance/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/benson/projects/rosdemo/ros_advance/src /home/benson/projects/rosdemo/ros_advance/src/plug /home/benson/projects/rosdemo/ros_advance/build /home/benson/projects/rosdemo/ros_advance/build/plug /home/benson/projects/rosdemo/ros_advance/build/plug/CMakeFiles/polygon_plugins.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : plug/CMakeFiles/polygon_plugins.dir/depend

