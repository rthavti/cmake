# Define a library for subdir2
add_library(sub2_lib source2.cpp)

# Include directories for subdir2 (if needed)
 target_include_directories(sub2_lib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

# Optionally set C++ standard for subdir2
# target_compile_features(sub2_lib PUBLIC cxx_std_11)

