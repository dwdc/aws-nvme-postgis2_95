#!/bin/bash

if [ `uname -r` != "4.4.41-36.55.amzn1.x86_64" ]; then
  curl -O http://download.osgeo.org/proj/proj-4.9.3.tar.gz
  tar -zxvf proj-4.9.3.tar.gz
  cd proj-4.9.3
  ./configure --prefix=/usr && make && make install
else:
curl --header 'Host: dl-web.dropbox.com' --header 'User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0' --header 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8' --header 'Accept-Language: zh-TW,zh;q=0.8,en-US;q=0.5,en;q=0.3' --header 'Referer: https://www.dropbox.com/' --header 'Cookie: locale=zh_TW; t=JTpjZMXPI9LNhPV1nevEX-tB; blid=AACDeyM86RVwhfvIJJRQ802zmO0iAwJZVhahzMi4xQ3K2Q; bjar=W3sidWlkIjogNjU0MTU3NTUyLCAic2Vzc19pZCI6IDMxNDcwODI3MjUxNTE1MjI5NTU3NDIyOTI5ODIzODY1NTcwMTMwNiwgImV4cGlyZXMiOiAxNDg5Mjg4NTkxLCAidGVhbV9pZCI6ICIiLCAicm9sZSI6ICJwZXJzb25hbCJ9XQ%3D%3D' --header 'Connection: keep-alive' --header 'Upgrade-Insecure-Requests: 1' 'https://dl-web.dropbox.com/get/proj-4.9.3-aws201701.tar.gz?_download_id=2602327527149833689300061664600852003888783423727318034651556148384&_notify_domain=www.dropbox.com&_subject_uid=654157552&dl=1&w=AACzwQ3ILMoKIgfJ4It1D-p6_ZP1vnUM4tai1eDBpeN5_g' -o 'proj-4.9.3-aws201701.tar.gz' -L
  tar -zxvf proj-4.9.3-aws201701.tar.gz
  cd proj-4.9.3
  make install
fi
cd ..
