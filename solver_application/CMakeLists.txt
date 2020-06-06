cmake_minimum_required(VERSION 3.4)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
project(solver_example)
add_subdirectory(/../solver_lib /solver_lib)
add_subdirectory(/../formatter_ex_lib /formatter_ex)

add_executable(example equation.cpp)
target_link_libraries(example solver_lib formatter_ex)
