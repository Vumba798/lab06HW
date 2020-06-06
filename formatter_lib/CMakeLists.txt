cmake_minimum_required(VERSION 3.4)
project(formatter_lib)

set(CMAKE_CXX_STANDART 11)
set(CMAKE_CXX_STANDART_REQUIRED ON)

if (NOT TARGET formatter)
    add_library(formatter STATIC ${CMAKE_CURRENT_LIST_DIR}/formatter.cpp)

    install(TARGETS formatter
        ARCHIVE DESTINATION lib
        LIBRARY DESTINATION lib
    )
endif()

include_directories(${CMAKE_CURRENT_LIST_DIR})
