cmake_minimum_required(VERSION 3.4)


set(LLVM_LIBRARY_DIRS "/home/jl/deploy/llvm342/Release/lib")

set(LLVM_INCLUDE_DIRS "/home/jl/deploy/llvm342/include")



include_directories(${LLVM_INCLUDE_DIRS})
link_directories(${LLVM_LIBRARY_DIRS})

add_subdirectory(skeleton)  # Use your pass name here.

