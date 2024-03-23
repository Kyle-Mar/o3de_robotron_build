# Install script for directory: C:/O3DE/22.05.0/Gems/Atom/RHI/Vulkan/Code

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/kcmos/O3DE/Projects/Robotron_2084_O3DE/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "profile")
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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCOREx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(NOT LY_CORE_COMPONENT_ALREADY_INCLUDED)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCOREx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake/3rdParty" TYPE FILE MESSAGE_NEVER FILES "C:/O3DE/22.05.0/cmake/3rdParty/Findglad_vulkan.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCOREx" OR NOT CMAKE_INSTALL_COMPONENT)
  endif()

endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCOREx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(NOT LY_CORE_COMPONENT_ALREADY_INCLUDED)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCOREx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Gems/Atom/RHI/Vulkan/External" TYPE DIRECTORY MESSAGE_NEVER FILES "C:/O3DE/22.05.0/Gems/Atom/RHI/Vulkan/External/glad" REGEX "/cmakelists\\.txt$" EXCLUDE REGEX "/[^/]*\\.cmake$" EXCLUDE REGEX "/\\_\\_pycache\\_\\_$" EXCLUDE REGEX "/[^/]*\\.egg\\-info$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xCOREx" OR NOT CMAKE_INSTALL_COMPONENT)
  endif()

endif()

