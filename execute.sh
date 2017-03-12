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

# Installing GEOS-3.6.1
./install_geos.sh

# Installing PROJ-4.9.3
./install_proj.sh

# Installing GDAL-2.1.3
./install_gdal.sh

# Installing PostGIS-2.3.2
./install_postgis23.sh

# linking libraries
ldconfig

echo "Done!"
