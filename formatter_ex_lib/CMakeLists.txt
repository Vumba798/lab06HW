cmake_minimum_required(VERSION 3.4)
project(formatter_ex_lib)

set(CMAKE_CXX_STANDART 11)
set(CMAKE_CXX_STANDART_REQUIRED ON)

include(${CMAKE_CURRENT_LIST_DIR}/../formatter_lib/CMakeLists.txt)

if (NOT TARGET formatter_ex)
    add_library(formatter_ex STATIC ${CMAKE_CURRENT_LIST_DIR}/formatter_ex.cpp)

    target_link_libraries(formatter_ex formatter)

    install(TARGETS formatter_ex
        LIBRARY DESTINATION lib
        ARCHIVE DESTINATION lib
    )
endif()

include_directories(${CMAKE_CURRENT_LIST_DIR})
