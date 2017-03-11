#!/bin/bash

if [ `uname -r` != "4.4.41-36.55.amzn1.x86_64" ]; then
  curl -O http://download.osgeo.org/postgis/source/postgis-2.3.2.tar.gz
  tar -zxvf postgis-2.3.2.tar.gz
  cd postgis-2.3.2
  ./configure --prefix=/usr && make && make install
else:
curl --header 'Host: dl-web.dropbox.com' --header 'User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0' --header 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8' --header 'Accept-Language: zh-TW,zh;q=0.8,en-US;q=0.5,en;q=0.3' --header 'Referer: https://www.dropbox.com/' --header 'Cookie: locale=zh_TW; t=JTpjZMXPI9LNhPV1nevEX-tB; blid=AACDeyM86RVwhfvIJJRQ802zmO0iAwJZVhahzMi4xQ3K2Q; bjar=W3sidWlkIjogNjU0MTU3NTUyLCAic2Vzc19pZCI6IDMxNDcwODI3MjUxNTE1MjI5NTU3NDIyOTI5ODIzODY1NTcwMTMwNiwgImV4cGlyZXMiOiAxNDg5Mjg4NTkxLCAidGVhbV9pZCI6ICIiLCAicm9sZSI6ICJwZXJzb25hbCJ9XQ%3D%3D' --header 'Connection: keep-alive' --header 'Upgrade-Insecure-Requests: 1' 'https://dl-web.dropbox.com/get/postgis-2.3.2-aws201701.tar.gz?_download_id=5603819913447131817249007863348616030177820260047800823023030419&_notify_domain=www.dropbox.com&_subject_uid=654157552&dl=1&w=AAC2dQM9K6sbxq2vBzB11LScAu3iZbE98T2nlBYx7HDDug' -o 'postgis-2.3.2-aws201701.tar.gz' -L
  tar -zxvf postgis-2.3.2-aws201701.tar.gz
  cd postgis-2.3.2
  make install
fi
cd ..
