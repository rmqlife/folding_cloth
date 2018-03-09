cmake_minimum_required (VERSION 2.6)
project (Folding_Cloth C CXX)

SET(CMAKE_CXX_FLAGS "-fopenmp -O3 -std=c++11 ${CMAKE_CXX_FLAGS}")


include_directories ("${PROJECT_BINARY_DIR}")
# libs
#include_directories ("${PROJECT_SOURCE_DIR}/libs/nanosvg/")
#add_subdirectory (libs/nanosvg)
#set (EXTRA_LIBS ${EXTRA_LIBS} nanosvg)


# boost
FIND_PACKAGE( Boost 1.40 COMPONENTS program_options REQUIRED )
INCLUDE_DIRECTORIES( ${Boost_INCLUDE_DIR} )
set (EXTRA_LIBS ${EXTRA_LIBS} ${Boost_LIBRARIES} )

include_directories ("${PROJECT_SOURCE_DIR}/libs/sqrt/")
add_subdirectory (libs/sqrt) 
set (EXTRA_LIBS ${EXTRA_LIBS} sqrt)




add_executable(add_func main.cpp)
target_link_libraries(add_func ${EXTRA_LIBS}) 
target_link_libraries(add_func ${Boost_LIBRARIES}) 
#add_executable(svg_converter svg_converter.cpp)
#target_link_libraries(svg_converter ${EXTRA_LIBS})
