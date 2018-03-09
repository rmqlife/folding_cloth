cmake_minimum_required (VERSION 2.6)
project (Folding_Cloth)

include_directories ("${PROJECT_BINARY_DIR}")
# libs
include_directories ("${PROJECT_SOURCE_DIR}/libs/nanosvg/")
include_directories ("${PROJECT_SOURCE_DIR}/libs/sqrt/")
add_subdirectory (libs/nanosvg)
add_subdirectory (libs/sqrt) 
set (EXTRA_LIBS ${EXTRA_LIBS} sqrt)
set (EXTRA_LIBS ${EXTRA_LIBS} nanosvg)

add_executable(add_func main.cpp)
add_executable(svg_converter svg_converter.cpp)
target_link_libraries(svg_converter ${EXTRA_LIBS})