#!/bin/bash

mkdir -p build-native
cd build-native
export CFLAGS=-DNO_WARN_X86_INTRINSICS
export CXXFLAGS=-DNO_WARN_X86_INTRINSICS
cmake .. -DCMAKE_BUILD_TYPE=Release -DPARALLEL_RSP_DEBUG_JIT=OFF
cmake --build . --parallel
cd ..
