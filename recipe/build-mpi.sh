#!/bin/bash

set -e

# avoid absolute-paths in compilers
export CC=$(basename "$CC")
export CXX=$(basename "$CXX")
export FC=$(basename "$FC")

if [ $(uname) == Darwin ]; then
    if [[ ! -z "$CONDA_BUILD_SYSROOT" ]]; then
        export CFLAGS="$CFLAGS -isysroot $CONDA_BUILD_SYSROOT"
        export CXXFLAGS="$CXXFLAGS -isysroot $CONDA_BUILD_SYSROOT"
    fi
    export LDFLAGS="$LDFLAGS -Wl,-rpath,$PREFIX/lib"

    # fix #include <version> issue on mac
    # VERSION (no ext) is included from the top-level repo dir for c++
    # xref: https://github.com/open-mpi/ompi/issues/7155
    # fix by renaming VERSION to VERSION.sh
    # grep -l '/VERSION' -R . | xargs sed -i "" s@/VERSION@/VERSION.sh@g
    mv -v VERSION VERSION.sh
    sed -i "" s@/VERSION@/VERSION.sh@g configure
fi

export LIBRARY_PATH="$PREFIX/lib"

./configure --prefix=$PREFIX \
            --disable-dependency-tracking \
            --enable-mpi-cxx \
            --disable-wrapper-rpath \
            --disable-wrapper-runpath \
            --with-wrapper-cflags="-I$PREFIX/include" \
            --with-wrapper-cxxflags="-I$PREFIX/include" \
            --with-wrapper-ldflags="-L$PREFIX/lib -Wl,-rpath,$PREFIX/lib" \
            --with-sge \
            --disable-dlopen

make -j"${CPU_COUNT:-1}"
make install
