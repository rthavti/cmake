cmake_minimum_required(VERSION 3.12)
project(my_project)

# Add subdirectories
add_subdirectory(subdir1)
add_subdirectory(subdir2)

# Define the main executable
add_executable(my_project main.cpp)

# Link the main executable with targets from subdirectories
target_link_libraries(my_project PRIVATE sub1_lib sub2_lib)

