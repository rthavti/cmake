include(CMakeFindDependencyMacro)

find_dependency(ExternalLib REQUIRED)

include("${CMAKE_CURRENT_LIST_DIR}/ExternalLibTargets.cmake")

