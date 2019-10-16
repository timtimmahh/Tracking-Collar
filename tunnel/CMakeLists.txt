cmake_minimum_required(VERSION 3.14)
project(tunnel_test)

set(CMAKE_CXX_STANDARD 14)

set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)

add_executable(client client.hpp client.cpp)
target_link_libraries(client Threads::Threads)
add_executable(server server.cpp)
target_link_libraries(server Threads::Threads)
add_executable(aserver aserver.cpp AsyncTCP.hpp)
target_link_libraries(aserver Threads::Threads)