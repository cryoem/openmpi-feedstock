#!/bin/bash
set -ex

export OMPI_MCA_plm=isolated
export OMPI_MCA_btl_vader_single_copy_mechanism=none
export OMPI_MCA_rmaps_base_oversubscribe=yes
MPIEXEC="${PWD}/mpiexec.sh"

pushd "tests"

if [[ $PKG_NAME == "openmpi" ]]; then
  command -v ompi_info
  ompi_info

  command -v mpiexec
  $MPIEXEC --help
  $MPIEXEC -n 4 ./helloworld.sh
fi

if [[ $PKG_NAME == "openmpi-mpicc" ]]; then
  command -v mpicc
  mpicc -show

  mpicc $CFLAGS $LDFLAGS helloworld.c -o helloworld_c
  $MPIEXEC -n 4 ./helloworld_c
fi

if [[ $PKG_NAME == "openmpi-mpicxx" ]]; then
  command -v mpicxx
  mpicxx -show

  mpicxx $CXXFLAGS $LDFLAGS helloworld.cxx -o helloworld_cxx
  $MPIEXEC -n 4 ./helloworld_cxx
fi

popd
