#!/bin/bash

if [ `uname -r` != "4.4.41-36.55.amzn1.x86_64" ]; then
  curl -O http://download.osgeo.org/gdal/2.1.3/gdal-2.1.3.tar.gz
  tar -zxvf gdal-2.1.3.tar.gz
  cd gdal-2.1.3
  ./configure --prefix=/usr && make && make install
else:
  curl -O http://github.com/dwdc/aws-postgis2_96/gdal-2.1.3-aws201701.tar.gz
  tar -zxvf gdal-2.1.3.tar.gz
  cd gdal-2.1.3
  make install
fi
cd ..
