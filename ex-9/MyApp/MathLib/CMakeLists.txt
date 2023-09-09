cmake_minimum_required(VERSION 3.12)
project(MathLib)

# Define the library target
add_library(MathLib math_functions.cpp math_functions.h)

# Install the library and header files
install(TARGETS MathLib DESTINATION lib)
install(FILES math_functions.h DESTINATION include)

