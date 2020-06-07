cmake_minimum_required(VERSION 3.4)

set(CMAKE_CXX_STANDART 11)
set(CMAKE_CXX_STANDART_REQUIRED ON)

project(solver)

set(SOLVER_VERSION_MAJOR 0)
set(SOLVER_VERSION_MINOR 1)
set(SOLVER_VERSION_PATCH 0)
set(SOLVER_VERSION_TWEAK 0)
set(SOLVER_VERSION
    ${SOLVER_VERSION_MAJOR}.${SOLVER_VERSION_MINOR}.${SOLVER_VERSION_PATCH}.${SOLVER_VERSION_TWEAK})
set(SOLVER_VERSION_STRING "v${SOLVER_VERSION}")

option(INSTALL_FORMATTER "Install libformatter" OFF)
option(INSTALL_FORMATTER_EX "Install libformatter_ex" OFF)
option(INSTALL_HELLOWORLD "Install hello_world" OFF)
option(INSTALL_LIBSOLVER "Install libsolver" OFF)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/hello_world_application)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/solver_application)

include(CPackConfig.cmake)
