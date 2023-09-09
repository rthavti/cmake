add_library(ExternalLib INTERFACE IMPORTED)

target_include_directories(ExternalLib INTERFACE
    $<INSTALL_INTERFACE:include>
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
)

target_link_libraries(ExternalLib INTERFACE
    $<INSTALL_INTERFACE:lib>
    $<BUILD_INTERFACE:${CMAKE_CURRENT_BINARY_DIR}>
)

