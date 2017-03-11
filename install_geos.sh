#!/bin/bash

if [ `uname -r` != "4.4.41-36.55.amzn1.x86_64" ]; then
  curl -O http://download.osgeo.org/geos/geos-3.6.1.tar.bz2
  tar -jxvf geos-3.6.1.tar.bz2
  cd geos-3.6.1
  ./configure --prefix=/usr && make && make install
else:
  curl -O http://github.com/dwdc/aws-postgis2_96/geos-3.6.1-aws201701.tar.gz
  tar -zxvf geos-3.6.1.tar.gz
  cd geos-3.6.1
  make install
fi
cd ..
