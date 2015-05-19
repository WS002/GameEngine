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
CMAKE_SOURCE_DIR = /home/nikolay/Projects/GameEngine

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nikolay/Projects/GameEngine/build

# Include any dependencies generated for this target.
include CMakeFiles/GameEngine.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/GameEngine.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/GameEngine.dir/flags.make

CMakeFiles/GameEngine.dir/main.cpp.o: CMakeFiles/GameEngine.dir/flags.make
CMakeFiles/GameEngine.dir/main.cpp.o: ../main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/nikolay/Projects/GameEngine/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/GameEngine.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/GameEngine.dir/main.cpp.o -c /home/nikolay/Projects/GameEngine/main.cpp

CMakeFiles/GameEngine.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GameEngine.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/nikolay/Projects/GameEngine/main.cpp > CMakeFiles/GameEngine.dir/main.cpp.i

CMakeFiles/GameEngine.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GameEngine.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/nikolay/Projects/GameEngine/main.cpp -o CMakeFiles/GameEngine.dir/main.cpp.s

CMakeFiles/GameEngine.dir/main.cpp.o.requires:
.PHONY : CMakeFiles/GameEngine.dir/main.cpp.o.requires

CMakeFiles/GameEngine.dir/main.cpp.o.provides: CMakeFiles/GameEngine.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/GameEngine.dir/build.make CMakeFiles/GameEngine.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/GameEngine.dir/main.cpp.o.provides

CMakeFiles/GameEngine.dir/main.cpp.o.provides.build: CMakeFiles/GameEngine.dir/main.cpp.o

CMakeFiles/GameEngine.dir/shaders/Shader.cpp.o: CMakeFiles/GameEngine.dir/flags.make
CMakeFiles/GameEngine.dir/shaders/Shader.cpp.o: ../shaders/Shader.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/nikolay/Projects/GameEngine/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/GameEngine.dir/shaders/Shader.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/GameEngine.dir/shaders/Shader.cpp.o -c /home/nikolay/Projects/GameEngine/shaders/Shader.cpp

CMakeFiles/GameEngine.dir/shaders/Shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GameEngine.dir/shaders/Shader.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/nikolay/Projects/GameEngine/shaders/Shader.cpp > CMakeFiles/GameEngine.dir/shaders/Shader.cpp.i

CMakeFiles/GameEngine.dir/shaders/Shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GameEngine.dir/shaders/Shader.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/nikolay/Projects/GameEngine/shaders/Shader.cpp -o CMakeFiles/GameEngine.dir/shaders/Shader.cpp.s

CMakeFiles/GameEngine.dir/shaders/Shader.cpp.o.requires:
.PHONY : CMakeFiles/GameEngine.dir/shaders/Shader.cpp.o.requires

CMakeFiles/GameEngine.dir/shaders/Shader.cpp.o.provides: CMakeFiles/GameEngine.dir/shaders/Shader.cpp.o.requires
	$(MAKE) -f CMakeFiles/GameEngine.dir/build.make CMakeFiles/GameEngine.dir/shaders/Shader.cpp.o.provides.build
.PHONY : CMakeFiles/GameEngine.dir/shaders/Shader.cpp.o.provides

CMakeFiles/GameEngine.dir/shaders/Shader.cpp.o.provides.build: CMakeFiles/GameEngine.dir/shaders/Shader.cpp.o

CMakeFiles/GameEngine.dir/textures/Texture.cpp.o: CMakeFiles/GameEngine.dir/flags.make
CMakeFiles/GameEngine.dir/textures/Texture.cpp.o: ../textures/Texture.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/nikolay/Projects/GameEngine/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/GameEngine.dir/textures/Texture.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/GameEngine.dir/textures/Texture.cpp.o -c /home/nikolay/Projects/GameEngine/textures/Texture.cpp

CMakeFiles/GameEngine.dir/textures/Texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GameEngine.dir/textures/Texture.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/nikolay/Projects/GameEngine/textures/Texture.cpp > CMakeFiles/GameEngine.dir/textures/Texture.cpp.i

CMakeFiles/GameEngine.dir/textures/Texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GameEngine.dir/textures/Texture.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/nikolay/Projects/GameEngine/textures/Texture.cpp -o CMakeFiles/GameEngine.dir/textures/Texture.cpp.s

CMakeFiles/GameEngine.dir/textures/Texture.cpp.o.requires:
.PHONY : CMakeFiles/GameEngine.dir/textures/Texture.cpp.o.requires

CMakeFiles/GameEngine.dir/textures/Texture.cpp.o.provides: CMakeFiles/GameEngine.dir/textures/Texture.cpp.o.requires
	$(MAKE) -f CMakeFiles/GameEngine.dir/build.make CMakeFiles/GameEngine.dir/textures/Texture.cpp.o.provides.build
.PHONY : CMakeFiles/GameEngine.dir/textures/Texture.cpp.o.provides

CMakeFiles/GameEngine.dir/textures/Texture.cpp.o.provides.build: CMakeFiles/GameEngine.dir/textures/Texture.cpp.o

CMakeFiles/GameEngine.dir/controls/controls.cpp.o: CMakeFiles/GameEngine.dir/flags.make
CMakeFiles/GameEngine.dir/controls/controls.cpp.o: ../controls/controls.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/nikolay/Projects/GameEngine/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/GameEngine.dir/controls/controls.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/GameEngine.dir/controls/controls.cpp.o -c /home/nikolay/Projects/GameEngine/controls/controls.cpp

CMakeFiles/GameEngine.dir/controls/controls.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GameEngine.dir/controls/controls.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/nikolay/Projects/GameEngine/controls/controls.cpp > CMakeFiles/GameEngine.dir/controls/controls.cpp.i

CMakeFiles/GameEngine.dir/controls/controls.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GameEngine.dir/controls/controls.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/nikolay/Projects/GameEngine/controls/controls.cpp -o CMakeFiles/GameEngine.dir/controls/controls.cpp.s

CMakeFiles/GameEngine.dir/controls/controls.cpp.o.requires:
.PHONY : CMakeFiles/GameEngine.dir/controls/controls.cpp.o.requires

CMakeFiles/GameEngine.dir/controls/controls.cpp.o.provides: CMakeFiles/GameEngine.dir/controls/controls.cpp.o.requires
	$(MAKE) -f CMakeFiles/GameEngine.dir/build.make CMakeFiles/GameEngine.dir/controls/controls.cpp.o.provides.build
.PHONY : CMakeFiles/GameEngine.dir/controls/controls.cpp.o.provides

CMakeFiles/GameEngine.dir/controls/controls.cpp.o.provides.build: CMakeFiles/GameEngine.dir/controls/controls.cpp.o

CMakeFiles/GameEngine.dir/meshes/Mesh.cpp.o: CMakeFiles/GameEngine.dir/flags.make
CMakeFiles/GameEngine.dir/meshes/Mesh.cpp.o: ../meshes/Mesh.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/nikolay/Projects/GameEngine/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/GameEngine.dir/meshes/Mesh.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/GameEngine.dir/meshes/Mesh.cpp.o -c /home/nikolay/Projects/GameEngine/meshes/Mesh.cpp

CMakeFiles/GameEngine.dir/meshes/Mesh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GameEngine.dir/meshes/Mesh.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/nikolay/Projects/GameEngine/meshes/Mesh.cpp > CMakeFiles/GameEngine.dir/meshes/Mesh.cpp.i

CMakeFiles/GameEngine.dir/meshes/Mesh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GameEngine.dir/meshes/Mesh.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/nikolay/Projects/GameEngine/meshes/Mesh.cpp -o CMakeFiles/GameEngine.dir/meshes/Mesh.cpp.s

CMakeFiles/GameEngine.dir/meshes/Mesh.cpp.o.requires:
.PHONY : CMakeFiles/GameEngine.dir/meshes/Mesh.cpp.o.requires

CMakeFiles/GameEngine.dir/meshes/Mesh.cpp.o.provides: CMakeFiles/GameEngine.dir/meshes/Mesh.cpp.o.requires
	$(MAKE) -f CMakeFiles/GameEngine.dir/build.make CMakeFiles/GameEngine.dir/meshes/Mesh.cpp.o.provides.build
.PHONY : CMakeFiles/GameEngine.dir/meshes/Mesh.cpp.o.provides

CMakeFiles/GameEngine.dir/meshes/Mesh.cpp.o.provides.build: CMakeFiles/GameEngine.dir/meshes/Mesh.cpp.o

CMakeFiles/GameEngine.dir/meshes/Model.cpp.o: CMakeFiles/GameEngine.dir/flags.make
CMakeFiles/GameEngine.dir/meshes/Model.cpp.o: ../meshes/Model.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/nikolay/Projects/GameEngine/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/GameEngine.dir/meshes/Model.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/GameEngine.dir/meshes/Model.cpp.o -c /home/nikolay/Projects/GameEngine/meshes/Model.cpp

CMakeFiles/GameEngine.dir/meshes/Model.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GameEngine.dir/meshes/Model.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/nikolay/Projects/GameEngine/meshes/Model.cpp > CMakeFiles/GameEngine.dir/meshes/Model.cpp.i

CMakeFiles/GameEngine.dir/meshes/Model.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GameEngine.dir/meshes/Model.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/nikolay/Projects/GameEngine/meshes/Model.cpp -o CMakeFiles/GameEngine.dir/meshes/Model.cpp.s

CMakeFiles/GameEngine.dir/meshes/Model.cpp.o.requires:
.PHONY : CMakeFiles/GameEngine.dir/meshes/Model.cpp.o.requires

CMakeFiles/GameEngine.dir/meshes/Model.cpp.o.provides: CMakeFiles/GameEngine.dir/meshes/Model.cpp.o.requires
	$(MAKE) -f CMakeFiles/GameEngine.dir/build.make CMakeFiles/GameEngine.dir/meshes/Model.cpp.o.provides.build
.PHONY : CMakeFiles/GameEngine.dir/meshes/Model.cpp.o.provides

CMakeFiles/GameEngine.dir/meshes/Model.cpp.o.provides.build: CMakeFiles/GameEngine.dir/meshes/Model.cpp.o

CMakeFiles/GameEngine.dir/meshes/shapes/Box.cpp.o: CMakeFiles/GameEngine.dir/flags.make
CMakeFiles/GameEngine.dir/meshes/shapes/Box.cpp.o: ../meshes/shapes/Box.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/nikolay/Projects/GameEngine/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/GameEngine.dir/meshes/shapes/Box.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/GameEngine.dir/meshes/shapes/Box.cpp.o -c /home/nikolay/Projects/GameEngine/meshes/shapes/Box.cpp

CMakeFiles/GameEngine.dir/meshes/shapes/Box.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GameEngine.dir/meshes/shapes/Box.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/nikolay/Projects/GameEngine/meshes/shapes/Box.cpp > CMakeFiles/GameEngine.dir/meshes/shapes/Box.cpp.i

CMakeFiles/GameEngine.dir/meshes/shapes/Box.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GameEngine.dir/meshes/shapes/Box.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/nikolay/Projects/GameEngine/meshes/shapes/Box.cpp -o CMakeFiles/GameEngine.dir/meshes/shapes/Box.cpp.s

CMakeFiles/GameEngine.dir/meshes/shapes/Box.cpp.o.requires:
.PHONY : CMakeFiles/GameEngine.dir/meshes/shapes/Box.cpp.o.requires

CMakeFiles/GameEngine.dir/meshes/shapes/Box.cpp.o.provides: CMakeFiles/GameEngine.dir/meshes/shapes/Box.cpp.o.requires
	$(MAKE) -f CMakeFiles/GameEngine.dir/build.make CMakeFiles/GameEngine.dir/meshes/shapes/Box.cpp.o.provides.build
.PHONY : CMakeFiles/GameEngine.dir/meshes/shapes/Box.cpp.o.provides

CMakeFiles/GameEngine.dir/meshes/shapes/Box.cpp.o.provides.build: CMakeFiles/GameEngine.dir/meshes/shapes/Box.cpp.o

CMakeFiles/GameEngine.dir/meshes/shapes/Sphere.cpp.o: CMakeFiles/GameEngine.dir/flags.make
CMakeFiles/GameEngine.dir/meshes/shapes/Sphere.cpp.o: ../meshes/shapes/Sphere.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/nikolay/Projects/GameEngine/build/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/GameEngine.dir/meshes/shapes/Sphere.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/GameEngine.dir/meshes/shapes/Sphere.cpp.o -c /home/nikolay/Projects/GameEngine/meshes/shapes/Sphere.cpp

CMakeFiles/GameEngine.dir/meshes/shapes/Sphere.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GameEngine.dir/meshes/shapes/Sphere.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/nikolay/Projects/GameEngine/meshes/shapes/Sphere.cpp > CMakeFiles/GameEngine.dir/meshes/shapes/Sphere.cpp.i

CMakeFiles/GameEngine.dir/meshes/shapes/Sphere.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GameEngine.dir/meshes/shapes/Sphere.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/nikolay/Projects/GameEngine/meshes/shapes/Sphere.cpp -o CMakeFiles/GameEngine.dir/meshes/shapes/Sphere.cpp.s

CMakeFiles/GameEngine.dir/meshes/shapes/Sphere.cpp.o.requires:
.PHONY : CMakeFiles/GameEngine.dir/meshes/shapes/Sphere.cpp.o.requires

CMakeFiles/GameEngine.dir/meshes/shapes/Sphere.cpp.o.provides: CMakeFiles/GameEngine.dir/meshes/shapes/Sphere.cpp.o.requires
	$(MAKE) -f CMakeFiles/GameEngine.dir/build.make CMakeFiles/GameEngine.dir/meshes/shapes/Sphere.cpp.o.provides.build
.PHONY : CMakeFiles/GameEngine.dir/meshes/shapes/Sphere.cpp.o.provides

CMakeFiles/GameEngine.dir/meshes/shapes/Sphere.cpp.o.provides.build: CMakeFiles/GameEngine.dir/meshes/shapes/Sphere.cpp.o

CMakeFiles/GameEngine.dir/meshes/shapes/Triangle.cpp.o: CMakeFiles/GameEngine.dir/flags.make
CMakeFiles/GameEngine.dir/meshes/shapes/Triangle.cpp.o: ../meshes/shapes/Triangle.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/nikolay/Projects/GameEngine/build/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/GameEngine.dir/meshes/shapes/Triangle.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/GameEngine.dir/meshes/shapes/Triangle.cpp.o -c /home/nikolay/Projects/GameEngine/meshes/shapes/Triangle.cpp

CMakeFiles/GameEngine.dir/meshes/shapes/Triangle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GameEngine.dir/meshes/shapes/Triangle.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/nikolay/Projects/GameEngine/meshes/shapes/Triangle.cpp > CMakeFiles/GameEngine.dir/meshes/shapes/Triangle.cpp.i

CMakeFiles/GameEngine.dir/meshes/shapes/Triangle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GameEngine.dir/meshes/shapes/Triangle.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/nikolay/Projects/GameEngine/meshes/shapes/Triangle.cpp -o CMakeFiles/GameEngine.dir/meshes/shapes/Triangle.cpp.s

CMakeFiles/GameEngine.dir/meshes/shapes/Triangle.cpp.o.requires:
.PHONY : CMakeFiles/GameEngine.dir/meshes/shapes/Triangle.cpp.o.requires

CMakeFiles/GameEngine.dir/meshes/shapes/Triangle.cpp.o.provides: CMakeFiles/GameEngine.dir/meshes/shapes/Triangle.cpp.o.requires
	$(MAKE) -f CMakeFiles/GameEngine.dir/build.make CMakeFiles/GameEngine.dir/meshes/shapes/Triangle.cpp.o.provides.build
.PHONY : CMakeFiles/GameEngine.dir/meshes/shapes/Triangle.cpp.o.provides

CMakeFiles/GameEngine.dir/meshes/shapes/Triangle.cpp.o.provides.build: CMakeFiles/GameEngine.dir/meshes/shapes/Triangle.cpp.o

CMakeFiles/GameEngine.dir/lightning/Light.cpp.o: CMakeFiles/GameEngine.dir/flags.make
CMakeFiles/GameEngine.dir/lightning/Light.cpp.o: ../lightning/Light.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/nikolay/Projects/GameEngine/build/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/GameEngine.dir/lightning/Light.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/GameEngine.dir/lightning/Light.cpp.o -c /home/nikolay/Projects/GameEngine/lightning/Light.cpp

CMakeFiles/GameEngine.dir/lightning/Light.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GameEngine.dir/lightning/Light.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/nikolay/Projects/GameEngine/lightning/Light.cpp > CMakeFiles/GameEngine.dir/lightning/Light.cpp.i

CMakeFiles/GameEngine.dir/lightning/Light.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GameEngine.dir/lightning/Light.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/nikolay/Projects/GameEngine/lightning/Light.cpp -o CMakeFiles/GameEngine.dir/lightning/Light.cpp.s

CMakeFiles/GameEngine.dir/lightning/Light.cpp.o.requires:
.PHONY : CMakeFiles/GameEngine.dir/lightning/Light.cpp.o.requires

CMakeFiles/GameEngine.dir/lightning/Light.cpp.o.provides: CMakeFiles/GameEngine.dir/lightning/Light.cpp.o.requires
	$(MAKE) -f CMakeFiles/GameEngine.dir/build.make CMakeFiles/GameEngine.dir/lightning/Light.cpp.o.provides.build
.PHONY : CMakeFiles/GameEngine.dir/lightning/Light.cpp.o.provides

CMakeFiles/GameEngine.dir/lightning/Light.cpp.o.provides.build: CMakeFiles/GameEngine.dir/lightning/Light.cpp.o

# Object files for target GameEngine
GameEngine_OBJECTS = \
"CMakeFiles/GameEngine.dir/main.cpp.o" \
"CMakeFiles/GameEngine.dir/shaders/Shader.cpp.o" \
"CMakeFiles/GameEngine.dir/textures/Texture.cpp.o" \
"CMakeFiles/GameEngine.dir/controls/controls.cpp.o" \
"CMakeFiles/GameEngine.dir/meshes/Mesh.cpp.o" \
"CMakeFiles/GameEngine.dir/meshes/Model.cpp.o" \
"CMakeFiles/GameEngine.dir/meshes/shapes/Box.cpp.o" \
"CMakeFiles/GameEngine.dir/meshes/shapes/Sphere.cpp.o" \
"CMakeFiles/GameEngine.dir/meshes/shapes/Triangle.cpp.o" \
"CMakeFiles/GameEngine.dir/lightning/Light.cpp.o"

# External object files for target GameEngine
GameEngine_EXTERNAL_OBJECTS =

GameEngine: CMakeFiles/GameEngine.dir/main.cpp.o
GameEngine: CMakeFiles/GameEngine.dir/shaders/Shader.cpp.o
GameEngine: CMakeFiles/GameEngine.dir/textures/Texture.cpp.o
GameEngine: CMakeFiles/GameEngine.dir/controls/controls.cpp.o
GameEngine: CMakeFiles/GameEngine.dir/meshes/Mesh.cpp.o
GameEngine: CMakeFiles/GameEngine.dir/meshes/Model.cpp.o
GameEngine: CMakeFiles/GameEngine.dir/meshes/shapes/Box.cpp.o
GameEngine: CMakeFiles/GameEngine.dir/meshes/shapes/Sphere.cpp.o
GameEngine: CMakeFiles/GameEngine.dir/meshes/shapes/Triangle.cpp.o
GameEngine: CMakeFiles/GameEngine.dir/lightning/Light.cpp.o
GameEngine: CMakeFiles/GameEngine.dir/build.make
GameEngine: /usr/lib/x86_64-linux-gnu/libGLU.so
GameEngine: /usr/lib/x86_64-linux-gnu/libGL.so
GameEngine: /usr/lib/x86_64-linux-gnu/libSM.so
GameEngine: /usr/lib/x86_64-linux-gnu/libICE.so
GameEngine: /usr/lib/x86_64-linux-gnu/libX11.so
GameEngine: /usr/lib/x86_64-linux-gnu/libXext.so
GameEngine: external/glfw-3.0.3/src/libglfw3.a
GameEngine: external/libGLEW_112.a
GameEngine: external/assimp-3.0.1270/code/libassimp.a
GameEngine: /usr/lib/x86_64-linux-gnu/libGLU.so
GameEngine: /usr/lib/x86_64-linux-gnu/libXrandr.so
GameEngine: /usr/lib/x86_64-linux-gnu/libXi.so
GameEngine: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
GameEngine: /usr/lib/x86_64-linux-gnu/librt.so
GameEngine: /usr/lib/x86_64-linux-gnu/libm.so
GameEngine: /usr/lib/x86_64-linux-gnu/libGL.so
GameEngine: /usr/lib/x86_64-linux-gnu/libSM.so
GameEngine: /usr/lib/x86_64-linux-gnu/libICE.so
GameEngine: /usr/lib/x86_64-linux-gnu/libX11.so
GameEngine: /usr/lib/x86_64-linux-gnu/libXext.so
GameEngine: external/assimp-3.0.1270/contrib/zlib/libz.a
GameEngine: CMakeFiles/GameEngine.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable GameEngine"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GameEngine.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/GameEngine.dir/build: GameEngine
.PHONY : CMakeFiles/GameEngine.dir/build

CMakeFiles/GameEngine.dir/requires: CMakeFiles/GameEngine.dir/main.cpp.o.requires
CMakeFiles/GameEngine.dir/requires: CMakeFiles/GameEngine.dir/shaders/Shader.cpp.o.requires
CMakeFiles/GameEngine.dir/requires: CMakeFiles/GameEngine.dir/textures/Texture.cpp.o.requires
CMakeFiles/GameEngine.dir/requires: CMakeFiles/GameEngine.dir/controls/controls.cpp.o.requires
CMakeFiles/GameEngine.dir/requires: CMakeFiles/GameEngine.dir/meshes/Mesh.cpp.o.requires
CMakeFiles/GameEngine.dir/requires: CMakeFiles/GameEngine.dir/meshes/Model.cpp.o.requires
CMakeFiles/GameEngine.dir/requires: CMakeFiles/GameEngine.dir/meshes/shapes/Box.cpp.o.requires
CMakeFiles/GameEngine.dir/requires: CMakeFiles/GameEngine.dir/meshes/shapes/Sphere.cpp.o.requires
CMakeFiles/GameEngine.dir/requires: CMakeFiles/GameEngine.dir/meshes/shapes/Triangle.cpp.o.requires
CMakeFiles/GameEngine.dir/requires: CMakeFiles/GameEngine.dir/lightning/Light.cpp.o.requires
.PHONY : CMakeFiles/GameEngine.dir/requires

CMakeFiles/GameEngine.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/GameEngine.dir/cmake_clean.cmake
.PHONY : CMakeFiles/GameEngine.dir/clean

CMakeFiles/GameEngine.dir/depend:
	cd /home/nikolay/Projects/GameEngine/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nikolay/Projects/GameEngine /home/nikolay/Projects/GameEngine /home/nikolay/Projects/GameEngine/build /home/nikolay/Projects/GameEngine/build /home/nikolay/Projects/GameEngine/build/CMakeFiles/GameEngine.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/GameEngine.dir/depend
