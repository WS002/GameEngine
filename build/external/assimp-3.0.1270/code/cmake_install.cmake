# Install script for directory: /home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libassimp3.0-r1270-OGLtuts")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/nikolay/Projects/GameEngine/build/external/assimp-3.0.1270/code/libassimp.a")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libassimp3.0-r1270-OGLtuts")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/assimp/anim.h;/assimp/ai_assert.h;/assimp/camera.h;/assimp/color4.h;/assimp/color4.inl;/assimp/config.h;/assimp/defs.h;/assimp/cfileio.h;/assimp/light.h;/assimp/material.h;/assimp/material.inl;/assimp/matrix3x3.h;/assimp/matrix3x3.inl;/assimp/matrix4x4.h;/assimp/matrix4x4.inl;/assimp/mesh.h;/assimp/postprocess.h;/assimp/quaternion.h;/assimp/quaternion.inl;/assimp/scene.h;/assimp/texture.h;/assimp/types.h;/assimp/vector2.h;/assimp/vector2.inl;/assimp/vector3.h;/assimp/vector3.inl;/assimp/version.h;/assimp/cimport.h;/assimp/importerdesc.h;/assimp/Importer.hpp;/assimp/DefaultLogger.hpp;/assimp/ProgressHandler.hpp;/assimp/IOStream.hpp;/assimp/IOSystem.hpp;/assimp/Logger.hpp;/assimp/LogStream.hpp;/assimp/NullLogger.hpp;/assimp/cexport.h;/assimp/Exporter.hpp")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/assimp" TYPE FILE FILES
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/anim.h"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/ai_assert.h"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/camera.h"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/color4.h"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/color4.inl"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/config.h"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/defs.h"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/cfileio.h"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/light.h"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/material.h"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/material.inl"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/matrix3x3.h"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/matrix3x3.inl"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/matrix4x4.h"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/matrix4x4.inl"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/mesh.h"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/postprocess.h"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/quaternion.h"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/quaternion.inl"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/scene.h"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/texture.h"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/types.h"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/vector2.h"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/vector2.inl"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/vector3.h"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/vector3.inl"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/version.h"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/cimport.h"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/importerdesc.h"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/Importer.hpp"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/DefaultLogger.hpp"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/ProgressHandler.hpp"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/IOStream.hpp"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/IOSystem.hpp"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/Logger.hpp"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/LogStream.hpp"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/NullLogger.hpp"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/cexport.h"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/Exporter.hpp"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/assimp/Compiler/pushpack1.h;/assimp/Compiler/poppack1.h;/assimp/Compiler/pstdint.h")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/assimp/Compiler" TYPE FILE FILES
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/Compiler/pushpack1.h"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/../include/assimp/Compiler/poppack1.h"
    "/home/nikolay/Projects/GameEngine/external/assimp-3.0.1270/code/pstdint.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

