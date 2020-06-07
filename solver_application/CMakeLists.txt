cmake_minimum_required(VERSION 3.4)

set(CMAKE_CXX_STANDART 11)
set(CMAKE_CXX_STANDART_REQUIRED ON)

include(${CMAKE_CURRENT_LIST_DIR}/../formatter_ex_lib/CMakeLists.txt)

# specify rule for solver_lib

add_library(libsolver STATIC ${CMAKE_CURRENT_LIST_DIR}/../solver_lib/solver.cpp)

include_directories(${CMAKE_CURRENT_LIST_DIR}/../solver_lib)

# specify rule for target solver

add_executable(solver ${CMAKE_CURRENT_LIST_DIR}/equation.cpp)

target_link_libraries(solver formatter_ex libsolver)

if(INSTALL_LIBSOLVER)
    install(TARGETS libsolver 
        RUNTIME DESTINATION bin
        ARCHIVE DESTINATION lib
        LIBRARY DESTINATION lib
    )
endif(INSTALL_LIBSOLVER)

if (WIN32)
    install(TARGETS solver
        RUNTIME DESTINATION Release
    )
else()
    install(TARGETS solver 
        RUNTIME DESTINATION bin
    )
endif()