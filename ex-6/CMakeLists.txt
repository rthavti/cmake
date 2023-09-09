cmake_minimum_required(VERSION 3.12)
project(MyApp)

# Set C++ standard
set(CMAKE_CXX_STANDARD 11)

# Define the main executable
add_executable(MyApp main.cpp)

# Include the predefined module
include(FindPackageHandleStandardArgs)

# Find the package (REQUIRED)
find_package(MyPackage REQUIRED)

# Function to handle the package
function(find_my_package)
    find_package_handle_standard_args(MyPackage
        REQUIRED_VARS MyPackage_INCLUDE_DIR
        VERSION_VAR MyPackage_VERSION
    )
endfunction()

# Call the find_my_package function
find_my_package()

# Print the result
if(MyPackage_FOUND)
    message(STATUS "MyPackage found: ${MyPackage_VERSION}")
    target_include_directories(MyApp PRIVATE ${MyPackage_INCLUDE_DIR})
else()
    message(FATAL_ERROR "MyPackage not found")
endif()

