#!/bin/bash

# Helper script installing GEOS library
# Due to relinking needs no pre-built libraries are provided
#

curl -O http://download.osgeo.org/geos/geos-3.6.1.tar.bz2
tar -jxvf geos-3.6.1.tar.bz2
cd geos-3.6.1
./configure --prefix=/usr && make && make install
cd ..
