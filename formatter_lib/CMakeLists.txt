cmake_minimum_required(VERSION 3.4)

set(CMAKE_CXX_STANDART 11)
set(CMAKE_CXX_STANDART_REQUIRED ON)

if (NOT TARGET formatter)
    add_library(formatter STATIC ${CMAKE_CURRENT_LIST_DIR}/formatter.cpp)
    
    if (INSTALL_FORMATTER)
        install(TARGETS formatter
            ARCHIVE DESTINATION lib
            LIBRARY DESTINATION lib
        )
    endif(INSTALL_FORMATTER)
endif(NOT TARGET formatter)

include_directories(${CMAKE_CURRENT_LIST_DIR})