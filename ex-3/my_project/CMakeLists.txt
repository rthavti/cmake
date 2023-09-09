cmake_minimum_required(VERSION 3.12)
project(my_project)

# Include the "utils" subdirectory
add_subdirectory(utils)

# Define the main executable
add_executable(my_project main.cpp)

# Link the main executable with the utility library
target_link_libraries(my_project PRIVATE utility)

