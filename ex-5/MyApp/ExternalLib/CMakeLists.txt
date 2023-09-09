cmake_minimum_required(VERSION 3.12)
project(ExternalLib)

# Define the library target
add_library(ExternalLib external_lib.cpp external_lib.h)

# Export the target so it can be imported by other CMake projects
export(TARGETS ExternalLib FILE ExternalLibConfig.cmake)


