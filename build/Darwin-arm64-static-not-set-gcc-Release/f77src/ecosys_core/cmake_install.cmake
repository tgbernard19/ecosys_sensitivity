# Install script for directory: /Users/tgbernard19/ecosys/f77src/ecosys_core

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/tgbernard19/ecosys/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/tgbernard19/ecosys/build/Darwin-arm64-static-not-set-gcc-Release/f77src/ecosys_core/libcore.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcore.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcore.a")
    execute_process(COMMAND "/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcore.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/Users/tgbernard19/ecosys/build/Darwin-arm64-static-not-set-gcc-Release/f77src/ecosys_core/CMakeFiles/core.dir/install-cxx-module-bmi-Release.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ecosys/core" TYPE FILE FILES
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk10.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk11a.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk11b.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk12a.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk12b.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk13a.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk13b.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk13c.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk13d.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk14.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk15a.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk15b.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk16.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk17.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk18a.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk18b.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk19a.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk19b.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk19c.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk19d.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk1cp.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk1cr.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk1g.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk1n.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk1p.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk1s.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk1u.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk20a.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk20b.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk20c.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk20d.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk20e.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk20f.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk21a.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk21b.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk22a.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk22b.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk22c.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk2a.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk2b.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk2c.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk3.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk5.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk6.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk8a.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk8b.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk9a.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk9b.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blk9c.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blkc.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/blktest.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/filec.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/files.h"
    "/Users/tgbernard19/ecosys/f77src/ecosys_core/parameters.h"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/tgbernard19/ecosys/build/Darwin-arm64-static-not-set-gcc-Release/f77src/ecosys_core/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
