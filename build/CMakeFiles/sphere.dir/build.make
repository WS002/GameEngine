# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/nikolay/Projects/OpenGL-tutorial_v0014_33

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nikolay/Projects/OpenGL-tutorial_v0014_33/build

# Include any dependencies generated for this target.
include CMakeFiles/sphere.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sphere.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sphere.dir/flags.make

CMakeFiles/sphere.dir/sphere/tutorial02.cpp.o: CMakeFiles/sphere.dir/flags.make
CMakeFiles/sphere.dir/sphere/tutorial02.cpp.o: ../sphere/tutorial02.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/nikolay/Projects/OpenGL-tutorial_v0014_33/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/sphere.dir/sphere/tutorial02.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sphere.dir/sphere/tutorial02.cpp.o -c /home/nikolay/Projects/OpenGL-tutorial_v0014_33/sphere/tutorial02.cpp

CMakeFiles/sphere.dir/sphere/tutorial02.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sphere.dir/sphere/tutorial02.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/nikolay/Projects/OpenGL-tutorial_v0014_33/sphere/tutorial02.cpp > CMakeFiles/sphere.dir/sphere/tutorial02.cpp.i

CMakeFiles/sphere.dir/sphere/tutorial02.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sphere.dir/sphere/tutorial02.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/nikolay/Projects/OpenGL-tutorial_v0014_33/sphere/tutorial02.cpp -o CMakeFiles/sphere.dir/sphere/tutorial02.cpp.s

CMakeFiles/sphere.dir/sphere/tutorial02.cpp.o.requires:
.PHONY : CMakeFiles/sphere.dir/sphere/tutorial02.cpp.o.requires

CMakeFiles/sphere.dir/sphere/tutorial02.cpp.o.provides: CMakeFiles/sphere.dir/sphere/tutorial02.cpp.o.requires
	$(MAKE) -f CMakeFiles/sphere.dir/build.make CMakeFiles/sphere.dir/sphere/tutorial02.cpp.o.provides.build
.PHONY : CMakeFiles/sphere.dir/sphere/tutorial02.cpp.o.provides

CMakeFiles/sphere.dir/sphere/tutorial02.cpp.o.provides.build: CMakeFiles/sphere.dir/sphere/tutorial02.cpp.o

CMakeFiles/sphere.dir/common/shader.cpp.o: CMakeFiles/sphere.dir/flags.make
CMakeFiles/sphere.dir/common/shader.cpp.o: ../common/shader.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/nikolay/Projects/OpenGL-tutorial_v0014_33/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/sphere.dir/common/shader.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sphere.dir/common/shader.cpp.o -c /home/nikolay/Projects/OpenGL-tutorial_v0014_33/common/shader.cpp

CMakeFiles/sphere.dir/common/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sphere.dir/common/shader.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/nikolay/Projects/OpenGL-tutorial_v0014_33/common/shader.cpp > CMakeFiles/sphere.dir/common/shader.cpp.i

CMakeFiles/sphere.dir/common/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sphere.dir/common/shader.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/nikolay/Projects/OpenGL-tutorial_v0014_33/common/shader.cpp -o CMakeFiles/sphere.dir/common/shader.cpp.s

CMakeFiles/sphere.dir/common/shader.cpp.o.requires:
.PHONY : CMakeFiles/sphere.dir/common/shader.cpp.o.requires

CMakeFiles/sphere.dir/common/shader.cpp.o.provides: CMakeFiles/sphere.dir/common/shader.cpp.o.requires
	$(MAKE) -f CMakeFiles/sphere.dir/build.make CMakeFiles/sphere.dir/common/shader.cpp.o.provides.build
.PHONY : CMakeFiles/sphere.dir/common/shader.cpp.o.provides

CMakeFiles/sphere.dir/common/shader.cpp.o.provides.build: CMakeFiles/sphere.dir/common/shader.cpp.o

CMakeFiles/sphere.dir/common/texture.cpp.o: CMakeFiles/sphere.dir/flags.make
CMakeFiles/sphere.dir/common/texture.cpp.o: ../common/texture.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/nikolay/Projects/OpenGL-tutorial_v0014_33/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/sphere.dir/common/texture.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sphere.dir/common/texture.cpp.o -c /home/nikolay/Projects/OpenGL-tutorial_v0014_33/common/texture.cpp

CMakeFiles/sphere.dir/common/texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sphere.dir/common/texture.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/nikolay/Projects/OpenGL-tutorial_v0014_33/common/texture.cpp > CMakeFiles/sphere.dir/common/texture.cpp.i

CMakeFiles/sphere.dir/common/texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sphere.dir/common/texture.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/nikolay/Projects/OpenGL-tutorial_v0014_33/common/texture.cpp -o CMakeFiles/sphere.dir/common/texture.cpp.s

CMakeFiles/sphere.dir/common/texture.cpp.o.requires:
.PHONY : CMakeFiles/sphere.dir/common/texture.cpp.o.requires

CMakeFiles/sphere.dir/common/texture.cpp.o.provides: CMakeFiles/sphere.dir/common/texture.cpp.o.requires
	$(MAKE) -f CMakeFiles/sphere.dir/build.make CMakeFiles/sphere.dir/common/texture.cpp.o.provides.build
.PHONY : CMakeFiles/sphere.dir/common/texture.cpp.o.provides

CMakeFiles/sphere.dir/common/texture.cpp.o.provides.build: CMakeFiles/sphere.dir/common/texture.cpp.o

# Object files for target sphere
sphere_OBJECTS = \
"CMakeFiles/sphere.dir/sphere/tutorial02.cpp.o" \
"CMakeFiles/sphere.dir/common/shader.cpp.o" \
"CMakeFiles/sphere.dir/common/texture.cpp.o"

# External object files for target sphere
sphere_EXTERNAL_OBJECTS =

sphere: CMakeFiles/sphere.dir/sphere/tutorial02.cpp.o
sphere: CMakeFiles/sphere.dir/common/shader.cpp.o
sphere: CMakeFiles/sphere.dir/common/texture.cpp.o
sphere: CMakeFiles/sphere.dir/build.make
sphere: /usr/lib/x86_64-linux-gnu/libGLU.so
sphere: /usr/lib/x86_64-linux-gnu/libGL.so
sphere: /usr/lib/x86_64-linux-gnu/libSM.so
sphere: /usr/lib/x86_64-linux-gnu/libICE.so
sphere: /usr/lib/x86_64-linux-gnu/libX11.so
sphere: /usr/lib/x86_64-linux-gnu/libXext.so
sphere: external/glfw-3.0.3/src/libglfw3.a
sphere: external/libGLEW_190.a
sphere: /usr/lib/x86_64-linux-gnu/libGLU.so
sphere: /usr/lib/x86_64-linux-gnu/libXrandr.so
sphere: /usr/lib/x86_64-linux-gnu/libXi.so
sphere: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
sphere: /usr/lib/x86_64-linux-gnu/librt.so
sphere: /usr/lib/x86_64-linux-gnu/libm.so
sphere: /usr/lib/x86_64-linux-gnu/libGL.so
sphere: /usr/lib/x86_64-linux-gnu/libSM.so
sphere: /usr/lib/x86_64-linux-gnu/libICE.so
sphere: /usr/lib/x86_64-linux-gnu/libX11.so
sphere: /usr/lib/x86_64-linux-gnu/libXext.so
sphere: CMakeFiles/sphere.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable sphere"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sphere.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sphere.dir/build: sphere
.PHONY : CMakeFiles/sphere.dir/build

CMakeFiles/sphere.dir/requires: CMakeFiles/sphere.dir/sphere/tutorial02.cpp.o.requires
CMakeFiles/sphere.dir/requires: CMakeFiles/sphere.dir/common/shader.cpp.o.requires
CMakeFiles/sphere.dir/requires: CMakeFiles/sphere.dir/common/texture.cpp.o.requires
.PHONY : CMakeFiles/sphere.dir/requires

CMakeFiles/sphere.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sphere.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sphere.dir/clean

CMakeFiles/sphere.dir/depend:
	cd /home/nikolay/Projects/OpenGL-tutorial_v0014_33/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nikolay/Projects/OpenGL-tutorial_v0014_33 /home/nikolay/Projects/OpenGL-tutorial_v0014_33 /home/nikolay/Projects/OpenGL-tutorial_v0014_33/build /home/nikolay/Projects/OpenGL-tutorial_v0014_33/build /home/nikolay/Projects/OpenGL-tutorial_v0014_33/build/CMakeFiles/sphere.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sphere.dir/depend

