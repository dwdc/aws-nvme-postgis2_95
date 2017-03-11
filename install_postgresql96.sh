#!/bin/bash

yum install -y zlib* readline*

curl -O https://ftp.postgresql.org/pub/source/v9.6.2/postgresql-9.6.2.tar.gz
tar -zxvf postgresql-9.6.2.tar.gz
cd postgresql-9.6.2
./configure --prefix=/usr && make && make install

cd ..
