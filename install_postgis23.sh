#!/bin/bash

if [ `uname -r` != "4.4.41-36.55.amzn1.x86_64" ]; then
  curl -O http://download.osgeo.org/postgis/source/postgis-2.3.2.tar.gz
  tar -zxvf postgis-2.3.2.tar.gz
  cd postgis-2.3.2
  ./configure --prefix=/usr && make && make install
else:
  curl -O http://github.com/dwdc/aws-postgis2_96/gdal-2.1.3-aws201701.tar.gz
  tar -zxvf postgis-2.3.2-aws201701.tar.gz
  cd postgis-2.3.2
  make install
fi
cd ..
