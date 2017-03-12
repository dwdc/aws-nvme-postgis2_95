#!/bin/bash

if [ `uname -r` == "4.4.41-36.55.amzn1.x86_64" ]; then
  curl -O https://raw.githubusercontent.com/dwdc/aws-postgis2_96/master/packages/proj-4.9.3-1.amzn1.x86_64.tar.gz
  tar -zxvf proj-4.9.3-1.amzn1.x86_64.tar.gz
  cp -rpf proj-4.9.3-1.amzn1.x86_64/* /
  rm -rf proj-4.9.3-1.amzn1.x86_64*
else
  curl -O http://download.osgeo.org/proj/proj-4.9.3.tar.gz
  tar -zxvf proj-4.9.3.tar.gz
  cd proj-4.9.3
  ./configure --prefix=/usr && make && make install
  cd ..
  rm -rf proj-4.9.3*
fi
