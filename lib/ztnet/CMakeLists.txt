cmake_minimum_required(VERSION 3.14)
project(ztnet CXX)

set(CMAKE_CXX_STANDARD 14)

set(libzt_proj_directory ${PROJECT_SOURCE_DIR}/include/libzt)
set(libzt_src_dir ${libzt_proj_directory}/src)
file(GLOB_RECURSE libzt_sources INCLUDE_DIRECTORIES false ${libzt_src_dir}/*.?pp
				${libzt_src_dir}/*.?pp)

set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)

include_directories(${libzt_proj_directory}/include)
add_subdirectory(${libzt_proj_directory})
include_directories(${libzt_sources})


add_executable(ztnet main.cpp)
target_link_libraries(ztnet
				${PROJECT_SOURCE_DIR}/include/libzt/lib/release/linux-x86_64/libzt.a
				${PROJECT_SOURCE_DIR}/include/libzt/lib/release/linux-x86_64/libztcore.a
				Threads::Threads)
get_property(includes TARGET ztnet PROPERTY INCLUDE_DIRECTORIES)
message("Includes are: \n${includes}")