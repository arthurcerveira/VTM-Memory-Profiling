#!/bin/bash

cd vtm-mem

DIR="./build/"
if [ -d "$DIR" ]; then
    cd build
else
    mkdir build
    cd build
    cmake .. -DCMAKE_BUILD_TYPE=Release
fi

make
