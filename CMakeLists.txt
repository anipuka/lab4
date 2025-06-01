cmake_minimum_required(VERSION 3.4)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(EquationSolver)

# Add formatter library
add_library(formatter STATIC formatter_lib/formatter.cpp)
target_include_directories(formatter PUBLIC 
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/formatter_lib>
    $<INSTALL_INTERFACE:include>
)

# Add formatter_ex library
add_library(formatter_ex STATIC formatter_ex_lib/formatter_ex.cpp)
target_include_directories(formatter_ex PUBLIC 
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/formatter_ex_lib>
    $<INSTALL_INTERFACE:include>
)
target_link_libraries(formatter_ex PUBLIC formatter)

# Add solver library
add_library(solver STATIC solver_lib/solver.cpp)
target_include_directories(solver PUBLIC 
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/solver_lib>
    $<INSTALL_INTERFACE:include>
)
target_link_libraries(solver PUBLIC formatter_ex)

# Add hello_world application
add_executable(hello_world hello_world_application/hello_world.cpp)
target_link_libraries(hello_world PRIVATE formatter_ex)

# Add solver_application
add_executable(solver_app solver_application/equation.cpp)
target_link_libraries(solver_app PRIVATE solver formatter_ex)

# Installation
install(TARGETS formatter formatter_ex solver
    EXPORT EquationSolver-config
    ARCHIVE DESTINATION lib
    LIBRARY DESTINATION lib
)

install(TARGETS hello_world solver_app
    RUNTIME DESTINATION bin
)

install(DIRECTORY formatter_lib/ DESTINATION include FILES_MATCHING PATTERN "*.h")
install(DIRECTORY formatter_ex_lib/ DESTINATION include FILES_MATCHING PATTERN "*.h")
install(DIRECTORY solver_lib/ DESTINATION include FILES_MATCHING PATTERN "*.h")
install(EXPORT EquationSolver-config DESTINATION cmake)
