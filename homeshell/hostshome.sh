#!/bin/bash

# 프로그램 작성
# /etc/hosts 파일에 여러대의 서버 정보를 입력한다. 
# /etc/hosts 파일의 하단 부분에 <IP> <Hostname> <Alias> 형식으로 등록되며, 
# 아이피의 범위는 172.30.1.200 ~ 172.30.1.249 까지이다.

# HOST 파일 편집 스크립트 작성 (2024.09.27)
# 호스트 경로 지정
HOST_HOME=/root/shells/homehost

NET=172.30.1
IP1=$(ip addr show ens224 \
        | grep 'inet ' \
        | awk -F/ '{ print $1}' \
        | awk -F. '{print $4}')
# echo $IP1 ; read
for i in $(seq 200 249)
do 
    [ $i -eq $IP1 ] && continue
    echo "$NET.$i   linux$i.example.com  linux$i" >> $HOST_HOME
done