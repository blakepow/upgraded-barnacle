cmake_minimum_required(VERSION 3.19)
project(rpg)

set(CMAKE_CXX_STANDARD 14)

add_executable(rpg main.cpp monster.cpp monster.h hero.cpp hero.h path.cpp path.h)