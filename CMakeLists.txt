cmake_minimum_required(VERSION 3.20)

PROJECT(test1 VERSION 0.1 LANGUAGES CUDA CXX C)

set(SET_CUDA_SEPARABLE_COMPILATION_4EXE ON)
set(SET_CUDA_RESOLVE_DEVICE_SYMBOLS_4EXE ON)

set(SET_CUDA_SEPARABLE_COMPILATION_4LIB ON)
set(SET_CUDA_RESOLVE_DEVICE_SYMBOLS_4LIB ON)

# find_package(CUDAToolkit REQUIRED)

option(BUILD_SHARED_LIBS "Build shared library project" OFF)

add_subdirectory(modules)
add_subdirectory(apps)

install()