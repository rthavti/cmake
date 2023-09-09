# CMakeLists.txt for the project using my_static_lib

# Minimum required CMake version
cmake_minimum_required(VERSION 3.12)

# Define the project and set its name
project(my_project)

# Specify the C++ standard (e.g., C++11, C++14, C++17)
set(CMAKE_CXX_STANDARD 17)

# Add an executable that uses the static library
add_executable(my_app main.cpp)

# Include the include directory from my_static_lib
target_include_directories(my_app PRIVATE ${CMAKE_SOURCE_DIR}/my_static_lib/include)

# Link the static library to the executable
target_link_libraries(my_app PRIVATE ${CMAKE_SOURCE_DIR}/my_static_lib/build/libmy_static_lib.a)

