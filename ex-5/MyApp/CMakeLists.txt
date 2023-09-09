cmake_minimum_required(VERSION 3.12)
project(MyApp)

# Set C++ standard
set(CMAKE_CXX_STANDARD 11)

# Include the directory containing ExternalLibConfig.cmake
list(APPEND CMAKE_PREFIX_PATH ${CMAKE_SOURCE_DIR}/ExternalLib)

# Define the main executable
add_executable(MyApp main.cpp)

# Link "MyApp" with "ExternalLib"
target_link_libraries(MyApp PRIVATE ExternalLib)

