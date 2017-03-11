#!/bin/bash

curl -O http://download.osgeo.org/postgis/source/postgis-2.3.2.tar.gz
tar -zxvf postgis-2.3.2.tar.gz
cd postgis-2.3.2
./configure --prefix=/usr && make && make install
cd ..
