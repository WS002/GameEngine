# CMake entry point
cmake_minimum_required (VERSION 2.6)
project (GameEngine)

find_package(OpenGL REQUIRED)


if( CMAKE_BINARY_DIR STREQUAL CMAKE_SOURCE_DIR )
    message( FATAL_ERROR "Please select another Build Directory ! (and give it a clever name, like bin_Visual2012_64bits/)" )
endif()
if( CMAKE_SOURCE_DIR MATCHES " " )
	message( "Your Source Directory contains spaces. If you experience problems when compiling, this can be the cause." )
endif()
if( CMAKE_BINARY_DIR MATCHES " " )
	message( "Your Build Directory contains spaces. If you experience problems when compiling, this can be the cause." )
endif()



# Compile external dependencies 
add_subdirectory (external)

# On Visual 2005 and above, this module can set the debug working directory
list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/external/rpavlik-cmake-modules-1c73e35")
include(CreateLaunchers)
include(MSVCMultipleProcessCompile) # /MP

if(INCLUDE_DISTRIB)
	add_subdirectory(distrib)
endif(INCLUDE_DISTRIB)



include_directories(
	external/AntTweakBar-1.16/include/
	external/glfw-3.0.3/include/GLFW/
	external/glm-0.9.4.0/
	external/glew-1.12.0/include/
	external/assimp-3.0.1270/include/
	external/bullet-2.81-rev2613/src/
	.
)

set(ALL_LIBS
	${OPENGL_LIBRARY}
	GLFW_303
	GLEW_112
        assimp
)

add_definitions(
	-DTW_STATIC
	-DTW_NO_LIB_PRAGMA
	-DTW_NO_DIRECT3D
	-DGLEW_STATIC
	-D_CRT_SECURE_NO_WARNINGS
)




# Game Engine.
add_executable(GameEngine
        main.cpp

        shaders/Shader.cpp
        shaders/Shader.hpp
        textures/Texture.cpp
        textures/Texture.hpp
        controls/controls.cpp
        controls/controls.hpp

        meshes/Mesh.cpp
        meshes/Mesh.hpp
	meshes/Model.cpp
        meshes/Model.hpp

	meshes/shapes/Box.hpp
	meshes/shapes/Box.cpp
	meshes/shapes/Sphere.hpp
	meshes/shapes/Sphere.cpp
        meshes/shapes/Triangle.hpp
        meshes/shapes/Triangle.cpp

        shaders/fragmentShader
        shaders/vertexShader

        lightning/Light.hpp
        lightning/Light.cpp

)
target_link_libraries(GameEngine
        ${ALL_LIBS}
)


