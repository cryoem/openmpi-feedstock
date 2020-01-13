#!/bin/bash

if [ $(uname) == Darwin ]; then
    export LDFLAGS="$LDFLAGS -Wl,-rpath,$PREFIX/lib"
fi

export LIBRARY_PATH="$PREFIX/lib"

./configure --prefix=$PREFIX \
            --disable-dependency-tracking \
            --enable-mpi-cxx \
            --with-wrapper-ldflags="-Wl,-rpath,$PREFIX/lib" \
            --disable-dlopen

make
make install
