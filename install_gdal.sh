#!/bin/bash

if [ `uname -r` == "4.4.41-36.55.amzn1.x86_64" ]; then
  curl -O https://raw.githubusercontent.com/dwdc/aws-postgis2_96/master/packages/gdal-2.1.3-1.amzn1.x86_64.tar.gz
  tar -zxvf gdal-2.1.3-1.amzn1.x86_64.tar.gz
  cp -rpf gdal-2.1.3-1.amzn1.x86_64/* /
  rm -rf gdal-2.1.3-1.amzn1.x86_64*
else
  curl -O http://download.osgeo.org/gdal/2.1.3/gdal-2.1.3.tar.gz
  tar -zxvf gdal-2.1.3.tar.gz
  cd gdal-2.1.3
  ./configure --prefix=/usr && make && make install
  cd ..
  rm -rf gdal-2.1.3*
fi
