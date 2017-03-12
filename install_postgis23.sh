#!/bin/bash

if [ `uname -r` == "4.4.41-36.55.amzn1.x86_64" ]; then
  curl -O https://raw.githubusercontent.com/dwdc/aws-postgis2_96/master/packages/postgis-2.3.2-1.amzn1.x86_64.tar.gz
  tar -zxvf postgis-2.3.2-1.amzn1.x86_64.tar.gz
  cp -rpf postgis-2.3.2-1.amzn1.x86_64/* /
  rm -rf postgis-2.3.2-1.amzn1.x86_64*
else
  curl -O http://download.osgeo.org/postgis/source/postgis-2.3.2.tar.gz
  tar -zxvf postgis-2.3.2.tar.gz
  cd postgis-2.3.2
  ./configure --prefix=/usr && make && make install
  cd ..
  rm -rf postgis-2.3.2*
fi

