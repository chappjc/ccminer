#!/bin/bash

# Simple script to create the Makefile and build

export PATH="$PATH:/opt/cuda/bin/"
export CC="gcc-5"
export CXX="g++-5"

make distclean || echo clean

rm -f Makefile.in
rm -f config.status
./autogen.sh || echo done

# CFLAGS="-O2" ./configure
./configure.sh

make -j 4
