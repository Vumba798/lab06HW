cmake_minimum_required(Version 3.4)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
project(hello_world_example)
add_subdirectory(/../formatter_ex_lib /formatter_ex)

add_executable(example hello_world.cpp)
target_link_libraries(example formatter_ex)
