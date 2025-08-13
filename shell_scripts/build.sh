#!/bin/bash

set -eux

pushd $(dirname "$0")/../
mkdir build
cd build
cmake \
  -D CMAKE_BUILD_TYPE=Release\
  -D CMAKE_POSITION_INDEPENDENT_CODE=ON\
  -D TEXCONV_USE_ALL=ON\
  -D ENABLE_LIBJPEG_SUPPORT=ON\
  -D ENABLE_LIBPNG_SUPPORT=ON\
  ../
cmake --build .
cp lib/libtexconv.* ../
popd
