#!/bin/bash
if [ ! -f pari-2.9.4/Makefile ]; then
    echo "downloading pari"
    wget https://pari.math.u-bordeaux.fr/pub/pari/unix/pari-2.9.4.tar.gz
    tar -xf pari-2.9.4.tar.gz
fi
cd pari-2.9.4
./Configure
make -j4 gp
sudo make install
