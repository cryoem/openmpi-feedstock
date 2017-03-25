About openmpi
=============

Home: http://www.open-mpi.org/

Package license: BSD 3-Clause

Feedstock license: BSD 3-Clause

Summary: An open source Message Passing Interface implementation.

The Open MPI Project is an open source Message Passing Interface
implementation that is developed and maintained by a consortium of academic,
research, and industry partners.


Current build status
====================

Linux: [![Circle CI](https://circleci.com/gh/cryoem/openmpi-feedstock.svg?style=shield)](https://circleci.com/gh/cryoem/openmpi-feedstock)
OSX: [![TravisCI](https://travis-ci.org/cryoem/openmpi-feedstock.svg?branch=master)](https://travis-ci.org/cryoem/openmpi-feedstock)
Windows: ![](https://cdn.rawgit.com/conda-forge/conda-smithy/90845bba35bec53edac7a16638aa4d77217a3713/conda_smithy/static/disabled.svg)

Current release info
====================
Version: [![Anaconda-Server Badge](https://anaconda.org/cryoem/openmpi/badges/version.svg)](https://anaconda.org/cryoem/openmpi)
Downloads: [![Anaconda-Server Badge](https://anaconda.org/cryoem/openmpi/badges/downloads.svg)](https://anaconda.org/cryoem/openmpi)

Installing openmpi
==================

Installing `openmpi` from the `cryoem` channel can be achieved by adding `cryoem` to your channels with:

```
conda config --add channels cryoem
```

Once the `cryoem` channel has been enabled, `openmpi` can be installed with:

```
conda install openmpi
```

It is possible to list all of the versions of `openmpi` available on your platform with:

```
conda search openmpi --channel cryoem
```




Updating openmpi-feedstock
==========================

If you would like to improve the openmpi recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`cryoem` channel, whereupon the built conda packages will be available for
everybody to install and use from the `cryoem` channel.
Note that all branches in the cryoem/openmpi-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](http://conda.pydata.org/docs/building/meta-yaml.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](http://conda.pydata.org/docs/building/meta-yaml.html#build-number-and-string)
   back to 0.
