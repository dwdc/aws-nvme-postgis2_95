# aws-postgis2_96

This package serves as a kickstart for installing PostgreSQL / PostGIS in fresh-new AWS instance. Particularly useful when one wish to setup fleet of instances and take advantage over NVMe instances on speeding up PostGIS performance. 

Note: Library configurations are tuned for running Mapbox / OpenMapTiles settings. Reconfigure for other systems if needed.

For mismatch kernel script will try to reconfigure / remake the package.

For user running SSD / NVMe enabled instances, see AWS instruction for mounting. 
http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ssd-instance-store.html


Execute the script as root to install:

```bash
./execute.sh {pg_data_path} 
```

e.g.:

```bash
./execute.sh /mnt/pgsql 
```

The script will take around 20 minutes (original source packages, on i3.large instance installing on NVMe drive)
