cmake_minimum_required(VERSION 3.22.1)
project("ffmod_native")

add_library(ffmod_native SHARED native-lib.cpp)

target_link_libraries(ffmod_native
    log
)

set_target_properties(ffmod_native PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED ON
)
