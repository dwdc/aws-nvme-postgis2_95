#!/bin/bash

# Installing dependencies
yum group install -y "Development Tools"
yum install -y libxml2* sqlite*

# Installing PostgreSQL 9.6
./install_postgresql96.sh
useradd postgres

# create directory for initialize db
mkdir $1
chown -R postgres:postgres $1
sudo -u postgres initdb --username=postgres --pgdata=$1

# Installing GEOS library
./install_geos.sh

# Installing GDAL library
./install_gdal.sh

# Installing ...
