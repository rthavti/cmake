cmake_minimum_required(VERSION 3.12)
project(MyApp)

# Create a CMake configuration file
configure_file(config.h.in config.h)

# Set C++ standard
set(CMAKE_CXX_STANDARD 11)

# Define the main executable
add_executable(MyApp main.cpp)

# Include the directory containing the generated config.h
target_include_directories(MyApp PRIVATE ${CMAKE_BINARY_DIR})

# Ensure that the generated config.h is included
target_sources(MyApp PRIVATE ${CMAKE_BINARY_DIR}/config.h)

