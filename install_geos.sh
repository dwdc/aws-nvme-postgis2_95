#!/bin/bash

if [ `uname -r` == "4.4.41-36.55.amzn1.x86_64" ]; then
  curl -O https://raw.githubusercontent.com/dwdc/aws-postgis2_96/master/packages/geos-3.6.1-1.amzn1.x86_64.tar.gz
  tar -zxvf geos-3.6.1-1.amzn1.x86_64.tar.gz
  cp -rpf geos-3.6.1-1.amzn1.x86_64/* /
  rm -rf geos-3.6.1-1.amzn1.x86_64*
else
  curl -O http://download.osgeo.org/geos/geos-3.6.1.tar.bz2
  tar -jxvf geos-3.6.1.tar.bz2
  cd geos-3.6.1
  ./configure --prefix=/usr && make && make install
  cd ..
  rm -rf geos-3.6.1*
fi
 
