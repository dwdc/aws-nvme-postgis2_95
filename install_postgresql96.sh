#!/bin/bash

yum install -y zlib* readline*

if [ `uname -r` == "4.4.41-36.55.amzn1.x86_64" ]; then
  curl -O https://raw.githubusercontent.com/dwdc/aws-postgis2_96/master/packages/postgresql-9.6.2-1.amzn1.x86_64.tar.gz
  tar -zxvf postgresql-9.6.2-1.amzn1.x86_64.tar.gz
  cp -rpf postgresql-9.6.2-1.amzn1.x86_64/* /
  rm -rf postgresql-9.6.2-1.amzn1.x86_64*
else
  curl -O https://ftp.postgresql.org/pub/source/v9.6.2/postgresql-9.6.2.tar.gz
  tar -zxvf postgresql-9.6.2.tar.gz
  cd postgresql-9.6.2
  ./configure --prefix=/usr && make && make install
  cd ..
  rm -rf postgresql-9.6.2*
fi

