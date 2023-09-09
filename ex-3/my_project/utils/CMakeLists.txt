# Define a library for the utility functions
add_library(utility utility.cpp)

# Optionally, you can specify include directories for this library
 target_include_directories(utility PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

