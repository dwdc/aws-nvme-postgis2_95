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
curl --header 'Host: dl-web.dropbox.com' --header 'User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0' --header 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8' --header 'Accept-Language: zh-TW,zh;q=0.8,en-US;q=0.5,en;q=0.3' --header 'Referer: https://www.dropbox.com/' --header 'Cookie: locale=zh_TW; t=JTpjZMXPI9LNhPV1nevEX-tB; blid=AACDeyM86RVwhfvIJJRQ802zmO0iAwJZVhahzMi4xQ3K2Q; bjar=W3sidWlkIjogNjU0MTU3NTUyLCAic2Vzc19pZCI6IDMxNDcwODI3MjUxNTE1MjI5NTU3NDIyOTI5ODIzODY1NTcwMTMwNiwgImV4cGlyZXMiOiAxNDg5Mjg4NTkxLCAidGVhbV9pZCI6ICIiLCAicm9sZSI6ICJwZXJzb25hbCJ9XQ%3D%3D' --header 'Connection: keep-alive' --header 'Upgrade-Insecure-Requests: 1' 'https://dl-web.dropbox.com/get/postgresql-9.6.2-aws201701.tar.gz?_download_id=394561180001779228540581596420667838122007758579709290989879166789&_notify_domain=www.dropbox.com&_subject_uid=654157552&dl=1&w=AABlsxm2Z-hTBBrv-ArrQtTYMyj-SYDs8f5hrrvMkbDUag' -o 'postgresql-9.6.2-aws201701.tar.gz' -L
  tar -zxvf postgresql-9.6.2-aws201701.tar.gz
  cd postgresql-9.6.2
  make install
fi 
cd ..
