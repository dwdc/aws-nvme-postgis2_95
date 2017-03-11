#!/bin/bash

curl -O http://download.osgeo.org/proj/proj-4.9.3.tar.gz
tar -zxvf proj-4.9.3.tar.gz
cd proj-4.9.3
./configure --prefix=/usr && make && make install
cd ..
