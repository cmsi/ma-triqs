#!/bin/sh

NAMES='triqs cthyb dft_tools hubbardi'
for name in ${NAMES}; do
  package="triqs-${name}"
  if [ ${name} = "triqs" ]; then
    package="triqs"
  fi
  if [ ${name} = "dft_tools" ]; then
    package="triqs-dfttools"
  fi
  VERSION_BASE=$(cd ${package} && . $(dirname $0)/path.sh 2>&1 > /dev/null && echo ${VERSION_BASE})
  if [ -f ${package}-${VERSION_BASE}.orig.tar.gz ]; then
    exit 127
  fi
  wget https://github.com/TRIQS/${name}/releases/download/${VERSION_BASE}/${name}-${VERSION_BASE}.tar.gz
  mkdir ${package}-${VERSION_BASE}
  tar zxvf ${name}-${VERSION_BASE}.tar.gz -C ${package}-${VERSION_BASE} --strip-component=1
  tar zcvf ${package}_${VERSION_BASE}.orig.tar.gz ${package}-${VERSION_BASE}
  rm -rf ${package}-${VERSION_BASE} ${name}-${VERSION_BASE}.tar.gz
done
