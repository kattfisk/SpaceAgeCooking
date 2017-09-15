# Install script for directory: C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/Glitter")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/cmake-build-debug/lib/libassimpd.a")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "assimp-dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/assimp" TYPE FILE FILES
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/anim.h"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/ai_assert.h"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/camera.h"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/color4.h"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/color4.inl"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/config.h"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/defs.h"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/cfileio.h"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/light.h"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/material.h"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/material.inl"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/matrix3x3.h"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/matrix3x3.inl"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/matrix4x4.h"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/matrix4x4.inl"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/mesh.h"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/postprocess.h"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/quaternion.h"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/quaternion.inl"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/scene.h"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/metadata.h"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/texture.h"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/types.h"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/vector2.h"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/vector2.inl"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/vector3.h"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/vector3.inl"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/version.h"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/cimport.h"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/importerdesc.h"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/Importer.hpp"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/DefaultLogger.hpp"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/ProgressHandler.hpp"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/IOStream.hpp"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/IOSystem.hpp"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/Logger.hpp"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/LogStream.hpp"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/NullLogger.hpp"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/cexport.h"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/Exporter.hpp"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "assimp-dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/assimp/Compiler" TYPE FILE FILES
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/Compiler/pushpack1.h"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/Compiler/poppack1.h"
    "C:/Users/kattfisk/Documents/Programming/SpaceAgeCooking/Glitter/Glitter/Vendor/assimp/code/../include/assimp/Compiler/pstdint.h"
    )
endif()

