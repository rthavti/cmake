cmake_minimum_required(VERSION 3.12)
project(my_project)

# Set C++ standard (C++11 in this case)
set(CMAKE_CXX_STANDARD 11)

# Set compiler flags (optional)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall")

# Define variables for source files and include directories
set(SOURCE_FILES
    main.cpp
    math/add.cpp
    math/subtract.cpp
)

set(INCLUDE_DIRS
    ${CMAKE_SOURCE_DIR}/includes
)

# Define the main executable
add_executable(my_project ${SOURCE_FILES})

# Set include directories for the main executable
target_include_directories(my_project PRIVATE ${INCLUDE_DIRS})

