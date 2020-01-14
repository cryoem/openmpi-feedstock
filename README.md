About openmpi-mpi
=================

Home: http://www.open-mpi.org/

Package license: BSD 3-Clause

Feedstock license: BSD 3-Clause

Summary: An open source Message Passing Interface implementation.

The Open MPI Project is an open source Message Passing Interface
implementation that is developed and maintained by a consortium of academic,
research, and industry partners.


Current build status
====================


<table><tr>
    <td>CircleCI</td>
    <td>
      <a href="https://circleci.com/gh/cryoem/openmpi-feedstock">
        <img alt="Linux" src="https://img.shields.io/circleci/project/github/cryoem/openmpi-feedstock/master.svg?label=Linux">
      </a>
    </td>
  </tr><tr>
    <td>Travis</td>
    <td>
      <a href="https://travis-ci.org/cryoem/openmpi-feedstock">
        <img alt="macOS" src="https://img.shields.io/travis/cryoem/openmpi-feedstock/master.svg?label=macOS">
      </a>
    </td>
  </tr>
    
  <tr>
    <td>Azure</td>
    <td>
      <details>
        <summary>
          <a href="https://dev.azure.com/cryoem/feedstock-builds/_build/latest?definitionId=blank&branchName=master">
            <img src="https://dev.azure.com/cryoem/feedstock-builds/_apis/build/status/openmpi-feedstock?branchName=master">
          </a>
        </summary>
        <table>
          <thead><tr><th>Variant</th><th>Status</th></tr></thead>
          <tbody><tr>
              <td>linux</td>
              <td>
                <a href="https://dev.azure.com/cryoem/feedstock-builds/_build/latest?definitionId=blank&branchName=master">
                  <img src="https://dev.azure.com/cryoem/feedstock-builds/_apis/build/status/openmpi-feedstock?branchName=master&jobName=linux&configuration=linux_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx</td>
              <td>
                <a href="https://dev.azure.com/cryoem/feedstock-builds/_build/latest?definitionId=blank&branchName=master">
                  <img src="https://dev.azure.com/cryoem/feedstock-builds/_apis/build/status/openmpi-feedstock?branchName=master&jobName=osx&configuration=osx_" alt="variant">
                </a>
              </td>
            </tr>
          </tbody>
        </table>
      </details>
    </td>
  </tr>
  <tr>
    <td>Windows</td>
    <td>
      <img src="https://img.shields.io/badge/Windows-disabled-lightgrey.svg" alt="Windows disabled">
    </td>
  </tr>
  <tr>
    <td>Linux_ppc64le</td>
    <td>
      <img src="https://img.shields.io/badge/ppc64le-disabled-lightgrey.svg" alt="ppc64le disabled">
    </td>
  </tr>
</table>

Current release info
====================

| Name | Downloads | Version | Platforms |
| --- | --- | --- | --- |
| [![Conda Recipe](https://img.shields.io/badge/recipe-openmpi-green.svg)](https://anaconda.org/cryoem/openmpi) | [![Conda Downloads](https://img.shields.io/conda/dn/cryoem/openmpi.svg)](https://anaconda.org/cryoem/openmpi) | [![Conda Version](https://img.shields.io/conda/vn/cryoem/openmpi.svg)](https://anaconda.org/cryoem/openmpi) | [![Conda Platforms](https://img.shields.io/conda/pn/cryoem/openmpi.svg)](https://anaconda.org/cryoem/openmpi) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-openmpi--mpicc-green.svg)](https://anaconda.org/cryoem/openmpi-mpicc) | [![Conda Downloads](https://img.shields.io/conda/dn/cryoem/openmpi-mpicc.svg)](https://anaconda.org/cryoem/openmpi-mpicc) | [![Conda Version](https://img.shields.io/conda/vn/cryoem/openmpi-mpicc.svg)](https://anaconda.org/cryoem/openmpi-mpicc) | [![Conda Platforms](https://img.shields.io/conda/pn/cryoem/openmpi-mpicc.svg)](https://anaconda.org/cryoem/openmpi-mpicc) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-openmpi--mpicxx-green.svg)](https://anaconda.org/cryoem/openmpi-mpicxx) | [![Conda Downloads](https://img.shields.io/conda/dn/cryoem/openmpi-mpicxx.svg)](https://anaconda.org/cryoem/openmpi-mpicxx) | [![Conda Version](https://img.shields.io/conda/vn/cryoem/openmpi-mpicxx.svg)](https://anaconda.org/cryoem/openmpi-mpicxx) | [![Conda Platforms](https://img.shields.io/conda/pn/cryoem/openmpi-mpicxx.svg)](https://anaconda.org/cryoem/openmpi-mpicxx) |

Installing openmpi-mpi
======================

Installing `openmpi-mpi` from the `cryoem` channel can be achieved by adding `cryoem` to your channels with:

```
conda config --add channels cryoem
```

Once the `cryoem` channel has been enabled, `openmpi, openmpi-mpicc, openmpi-mpicxx` can be installed with:

```
conda install openmpi openmpi-mpicc openmpi-mpicxx
```

It is possible to list all of the versions of `openmpi` available on your platform with:

```
conda search openmpi --channel cryoem
```




Updating openmpi-mpi-feedstock
==============================

If you would like to improve the openmpi-mpi recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`cryoem` channel, whereupon the built conda packages will be available for
everybody to install and use from the `cryoem` channel.
Note that all branches in the cryoem/openmpi-mpi-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](https://conda.io/docs/user-guide/tasks/build-packages/define-metadata.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](https://conda.io/docs/user-guide/tasks/build-packages/define-metadata.html#build-number-and-string)
   back to 0.

Feedstock Maintainers
=====================


