cmake_minimum_required(VERSION 3.12)
project(MyProject)

# Define a CMake variable to control the feature
option(ENABLE_FEATURE "Enable a special feature" ON)

# Check if the feature is enabled
if (ENABLE_FEATURE)
    message(STATUS "Special feature is enabled.")
    # Include additional source files or perform other actions related to the feature.
else()
    message(STATUS "Special feature is disabled.")
    # Exclude specific source files or perform other actions when the feature is disabled.
endif()

# Define the main executable
add_executable(MyProject main.cpp)

