#!/bin/bash
cd "$(dirname "$(readlink -f "$0")")"

mkdir -p ./build_dir
cd ./build_dir
cmake ..
cmake --build . --target all
