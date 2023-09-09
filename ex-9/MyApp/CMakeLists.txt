cmake_minimum_required(VERSION 3.12)
project(MyApp)

# Set C++ standard
set(CMAKE_CXX_STANDARD 11)

# Define the main executable
add_executable(MyApp main.cpp)

# Include the "MathLib" directory to find "math_functions.h"
target_include_directories(MyApp PRIVATE ${CMAKE_SOURCE_DIR}/MathLib)

# Link "MyApp" with the "MathLib" library
target_link_libraries(MyApp PRIVATE MathLib)

