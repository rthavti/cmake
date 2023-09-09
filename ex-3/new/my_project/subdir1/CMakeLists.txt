# Define a library for subdir1
add_library(sub1_lib source1.cpp)

# Include directories for subdir1 (if needed)
 target_include_directories(sub1_lib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

# Optionally set C++ standard for subdir1
# target_compile_features(sub1_lib PUBLIC cxx_std_11)

