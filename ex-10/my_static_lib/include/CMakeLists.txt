# CMakeLists.txt for my_static_lib

# Minimum required CMake version
cmake_minimum_required(VERSION 3.12)

# Define the project and set its name
project(my_static_lib)

# Specify the C++ standard (e.g., C++11, C++14, C++17)
set(CMAKE_CXX_STANDARD 17)

# Set the source files for the static library
set(SOURCES
    src/my_static_lib.cpp
)

# Create the static library target
add_library(my_static_lib STATIC ${SOURCES})

# Specify the include directories for this library
target_include_directories(my_static_lib
    PUBLIC
    $<INSTALL_INTERFACE:include>
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
)

