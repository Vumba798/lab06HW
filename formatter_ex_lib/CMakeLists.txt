cmake_minimum_required(VERSION 3.4)

set(CMAKE_CXX_STANDART 11)
set(CMAKE_CXX_STANDART_REQUIRED ON)

include(${CMAKE_CURRENT_LIST_DIR}/../formatter_lib/CMakeLists.txt)

if (NOT TARGET formatter_ex)
    add_library(formatter_ex STATIC ${CMAKE_CURRENT_LIST_DIR}/formatter_ex.cpp)

    target_link_libraries(formatter_ex formatter)

    if (INSTALL_FORMATTER_EX)
        install(TARGETS formatter_ex
            LIBRARY DESTINATION lib
            ARCHIVE DESTINATION lib
        )
    endif(INSTALL_FORMATTER_EX)
endif(NOT TARGET formatter_ex)

include_directories(${CMAKE_CURRENT_LIST_DIR})