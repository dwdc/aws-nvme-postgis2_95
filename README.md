# aws-postgis2_96

This package serves as a kickstart for installing PostgreSQL / PostGIS in fresh-new AWS instance. Particularly useful when one wish to setup fleet of instances and take advantage over NVMe instances on speeding up PostGIS performance. 

Package prebuilt for Amazon Linux 4.4.41-36.55.amzn1.x86_64. For mismatch kernel script will try to reconfigure / remake the package.

Execute the script as:

```bash
./execute.sh {pg_data_path} ```

e.g.:

```bash
./execute.sh /mnt/pgsql ```

