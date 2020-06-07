cmake_minimum_required(VERSION 3.4)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include(${CMAKE_CURRENT_LIST_DIR}/../formatter_ex_lib/CMakeLists.txt)

add_executable(hello_world ${CMAKE_CURRENT_LIST_DIR}/hello_world.cpp)

target_link_libraries(hello_world formatter_ex)

if (INSTALL_HELLOWORLD)
    install(TARGETS hello_world
        RUNTIME DESTINATION bin
    )
endif(INSTALL_HELLOWORLD)