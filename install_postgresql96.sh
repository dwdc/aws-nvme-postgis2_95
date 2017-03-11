#!/bin/bash

yum install -y zlib* readline*

# if match pre-built version, use prebuild one.
# else, compile from scratch

if [ `uname -r` != "4.4.41-36.55.amzn1.x86_64" ]; then
  curl -O https://ftp.postgresql.org/pub/source/v9.6.2/postgresql-9.6.2.tar.gz
  tar -zxvf postgresql-9.6.2.tar.gz
  cd postgresql-9.6.2
  ./configure --prefix=/usr && make && make install

else
  curl -O https://github.com/dwdc/aws-postgis2_96/postgresql-9.6.2-aws201701.tar.gz
  tar -zxvf postgresql-9.6.2.tar.gz
  cd postgresql-9.6.2
  make install
fi 
cd ..
