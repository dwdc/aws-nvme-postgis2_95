#!/bin/bash

curl -O http://download.osgeo.org/gdal/2.1.3/gdal-2.1.3.tar.gz
tar -zxvf gdal-2.1.3.tar.gz
cd gdal-2.1.3
./configure --prefix=/usr && make && make install
cd ..
