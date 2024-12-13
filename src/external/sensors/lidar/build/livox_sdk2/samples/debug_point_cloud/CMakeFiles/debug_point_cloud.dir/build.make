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
CMAKE_SOURCE_DIR = /home/projects/ros2_ws/src/external/sensors/lidar/livox/livox-SDK2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/projects/ros2_ws/src/external/sensors/lidar/build/livox_sdk2

# Include any dependencies generated for this target.
include samples/debug_point_cloud/CMakeFiles/debug_point_cloud.dir/depend.make

# Include the progress variables for this target.
include samples/debug_point_cloud/CMakeFiles/debug_point_cloud.dir/progress.make

# Include the compile flags for this target's objects.
include samples/debug_point_cloud/CMakeFiles/debug_point_cloud.dir/flags.make

samples/debug_point_cloud/CMakeFiles/debug_point_cloud.dir/main.cpp.o: samples/debug_point_cloud/CMakeFiles/debug_point_cloud.dir/flags.make
samples/debug_point_cloud/CMakeFiles/debug_point_cloud.dir/main.cpp.o: /home/projects/ros2_ws/src/external/sensors/lidar/livox/livox-SDK2/samples/debug_point_cloud/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/projects/ros2_ws/src/external/sensors/lidar/build/livox_sdk2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object samples/debug_point_cloud/CMakeFiles/debug_point_cloud.dir/main.cpp.o"
	cd /home/projects/ros2_ws/src/external/sensors/lidar/build/livox_sdk2/samples/debug_point_cloud && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/debug_point_cloud.dir/main.cpp.o -c /home/projects/ros2_ws/src/external/sensors/lidar/livox/livox-SDK2/samples/debug_point_cloud/main.cpp

samples/debug_point_cloud/CMakeFiles/debug_point_cloud.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/debug_point_cloud.dir/main.cpp.i"
	cd /home/projects/ros2_ws/src/external/sensors/lidar/build/livox_sdk2/samples/debug_point_cloud && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/projects/ros2_ws/src/external/sensors/lidar/livox/livox-SDK2/samples/debug_point_cloud/main.cpp > CMakeFiles/debug_point_cloud.dir/main.cpp.i

samples/debug_point_cloud/CMakeFiles/debug_point_cloud.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/debug_point_cloud.dir/main.cpp.s"
	cd /home/projects/ros2_ws/src/external/sensors/lidar/build/livox_sdk2/samples/debug_point_cloud && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/projects/ros2_ws/src/external/sensors/lidar/livox/livox-SDK2/samples/debug_point_cloud/main.cpp -o CMakeFiles/debug_point_cloud.dir/main.cpp.s

# Object files for target debug_point_cloud
debug_point_cloud_OBJECTS = \
"CMakeFiles/debug_point_cloud.dir/main.cpp.o"

# External object files for target debug_point_cloud
debug_point_cloud_EXTERNAL_OBJECTS =

samples/debug_point_cloud/debug_point_cloud: samples/debug_point_cloud/CMakeFiles/debug_point_cloud.dir/main.cpp.o
samples/debug_point_cloud/debug_point_cloud: samples/debug_point_cloud/CMakeFiles/debug_point_cloud.dir/build.make
samples/debug_point_cloud/debug_point_cloud: sdk_core/liblivox_lidar_sdk_static.a
samples/debug_point_cloud/debug_point_cloud: samples/debug_point_cloud/CMakeFiles/debug_point_cloud.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/projects/ros2_ws/src/external/sensors/lidar/build/livox_sdk2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable debug_point_cloud"
	cd /home/projects/ros2_ws/src/external/sensors/lidar/build/livox_sdk2/samples/debug_point_cloud && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/debug_point_cloud.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
samples/debug_point_cloud/CMakeFiles/debug_point_cloud.dir/build: samples/debug_point_cloud/debug_point_cloud

.PHONY : samples/debug_point_cloud/CMakeFiles/debug_point_cloud.dir/build

samples/debug_point_cloud/CMakeFiles/debug_point_cloud.dir/clean:
	cd /home/projects/ros2_ws/src/external/sensors/lidar/build/livox_sdk2/samples/debug_point_cloud && $(CMAKE_COMMAND) -P CMakeFiles/debug_point_cloud.dir/cmake_clean.cmake
.PHONY : samples/debug_point_cloud/CMakeFiles/debug_point_cloud.dir/clean

samples/debug_point_cloud/CMakeFiles/debug_point_cloud.dir/depend:
	cd /home/projects/ros2_ws/src/external/sensors/lidar/build/livox_sdk2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/projects/ros2_ws/src/external/sensors/lidar/livox/livox-SDK2 /home/projects/ros2_ws/src/external/sensors/lidar/livox/livox-SDK2/samples/debug_point_cloud /home/projects/ros2_ws/src/external/sensors/lidar/build/livox_sdk2 /home/projects/ros2_ws/src/external/sensors/lidar/build/livox_sdk2/samples/debug_point_cloud /home/projects/ros2_ws/src/external/sensors/lidar/build/livox_sdk2/samples/debug_point_cloud/CMakeFiles/debug_point_cloud.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : samples/debug_point_cloud/CMakeFiles/debug_point_cloud.dir/depend

