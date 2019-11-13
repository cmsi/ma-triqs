<img src="https://ma.issp.u-tokyo.ac.jp/wp-content/themes/materiapps/images/materiapps.svg" width=150>

# MateriApps Debian Package: TRIQS

### TRIQS: Toolbox for Research on Interacting Quantum Systems

TRIQS (Toolbox for Research on Interacting Quantum Systems) is a scientific project providing a set of C++ and Python libraries to develop new tools for the study of interacting quantum systems.

### Version

* triqs 1.4.x.20190220-1 (13 Nov 2019)
* triqs-cthyb 1.4.2-3 (29 Jul 2018)
* triqs-dfttools 2.2.x.20171024-1 (13 Nov 2019)
* triqs-hubbardi 20171122-2 (29 Jul 2018)

### Provided packages

* triqs - base package
* triqs-cthyb - hybridization-expansion solver based on the triqs library
* triqs-dfttools - interface to DFT codes
* triqs-hubbardi - Hubbard I solver based on the triqs library

### Target distributions and architectures

* Debian buster/stretch/jessie (amd64, i386)
* Ubuntu bionic/xenial (amd64)

### For users

* How to install ALPS Core

  1. Add MateriApps LIVE! apt repository to Debian [[English](https://github.com/cmsi/MateriAppsLive/wiki/UsingMateriAppsInDebian-en)][[“ú–{Œê(https://github.com/cmsi/MateriAppsLive/wiki/UsingMateriAppsInDebian)]

  2. Install TRIQS and solvers

     ```
     suto apt-get install triqs triqs-cthyb triqs-dfttools triqs-hubbardi
     ```

### For Debian package maintainers

* How to prepare original source tarball

  ```
  VERSION=1.4.x.20190220
  COMMIT=3fac9500e83149acdfa058d4eb26af2bf45bd3a0
  cd $HOME/vagrant/data/src
  wget -O triqs-$VERSION.tar.gz https://github.com/TRIQS/triqs/archive/$COMMIT.tar.gz
  tar zxvf triqs-$VERSION.tar.gz
  mv -f triqs-$COMMIT triqs_$VERSION
  tar zcvf triqs_$VERSION.orig.tar.gz triqs_$VERSION
  rm -rf triqs-$VERSION.tar.gz triqs_$VERSION

  VERSION=1.4.2
  cd $HOME/vagrant/data/src
  wget -O triqs-cthyb-$VERSION.tar.gz https://github.com/TRIQS/cthyb/archive/$VERSION.tar.gz
  tar zxvf triqs-cthyb-$VERSION.tar.gz
  mv -f cthyb-$VERSION triqs-cthyb_$VERSION
  tar zcvf triqs-cthyb_$VERSION.orig.tar.gz triqs-cthyb_$VERSION
  rm -rf triqs-cthyb-$VERSION.tar.gz triqs-cthyb_$VERSION

  VERSION=2.2.x.20171024
  COMMIT=d00575632c4c0aa0fd2ca6f09cbab25f7cd275a3
  cd $HOME/vagrant/data/src
  wget -O triqs-dfttools-$VERSION.tar.gz https://github.com/TRIQS/dft_tools/archive/$COMMIT.tar.gz
  tar zxvf triqs-dfttools-$VERSION.tar.gz
  mv -f dft_tools-$COMMIT triqs-dfttools_$VERSION
  tar zcvf triqs-dfttools_$VERSION.orig.tar.gz triqs-dfttools_$VERSION
  rm -rf triqs-dfttools-$VERSION.tar.gz triqs-dfttools_$VERSION

  VERSION=20171122
  COMMIT=d919676f472bd5855751159bb91d1737ee9a46ea
  cd $HOME/vagrant/data/src
  wget -O triqs-hubbardi-$VERSION.tar.gz https://github.com/TRIQS/hubbardI/archive/$COMMIT.tar.gz
  tar zxvf triqs-hubbardi-$VERSION.tar.gz
  mv -f hubbardI-$COMMIT triqs-hubbardi_$VERSION
  tar zcvf triqs-hubbardi_$VERSION.orig.tar.gz triqs-hubbardi_$VERSION
  rm -rf triqs-hubbardi-$VERSION.tar.gz triqs-hubbardi_$VERSION
  ```
  
### Links
  
* [MateriApps LIVE! Home Page](http://cmsi.github.io/MateriAppsLive/)
* [MateriApps LIVE! Forum](https://github.com/cmsi/MateriAppsLive-forum/wiki) (Users Forum)
* [MateriApps LIVE! Wiki](https://github.com/cmsi/MateriAppsLive/wiki) (Documents and FAQ)
* [MateriApps LIVE!](https://ma.issp.u-tokyo.ac.jp/en/app/275) on MateriApps
