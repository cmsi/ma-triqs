# ma-triqs

## How to prepare source files for triqs package

        VERSION=1.4.2
        cd $HOME/vagrant/data/src
        wget -O triqs-$VERSION.tar.gz https://github.com/TRIQS/triqs/archive/$VERSION.tar.gz
        tar zxvf triqs-$VERSION.tar.gz
        mv -f triqs-$VERSION triqs_$VERSION
        tar zcvf triqs_$VERSION.orig.tar.gz triqs_$VERSION
        rm -rf triqs-$VERSION.tar.gz triqs_$VERSION

        VERSION=1.4.2
        cd $HOME/vagrant/data/src
        wget -O triqs-cthyb-$VERSION.tar.gz https://github.com/TRIQS/cthyb/archive/$VERSION.tar.gz
        tar zxvf triqs-cthyb-$VERSION.tar.gz
        mv -f cthyb-$VERSION triqs-cthyb_$VERSION
        tar zcvf triqs-cthyb_$VERSION.orig.tar.gz triqs-cthyb_$VERSION
        rm -rf triqs-cthyb-$VERSION.tar.gz triqs-cthyb_$VERSION

        VERSION=1.5
        cd $HOME/vagrant/data/src
        wget -O triqs-dfttools-$VERSION.tar.gz https://github.com/TRIQS/dft_tools/archive/$VERSION.tar.gz
        tar zxvf triqs-dfttools-$VERSION.tar.gz
        mv -f dft_tools-$VERSION triqs-dfttools_$VERSION
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

