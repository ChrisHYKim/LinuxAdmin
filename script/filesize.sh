#!/bin/bash
if [ $# -ne 1   ]; then 
    echo "Usage $0 <filename> <filesize>"
    exit 1
fi

FILENAME= $1
FILESIZE=`wc -c < $1`  

# 5120 byte 큰 경우
if [    "$FILESIZE" -ge 5120 ]; then
    echo "[ INFO  ] $FILENAME($FILESIZE): Big Size"
# 5120 byte 작은 경우,
else
    echo "[ INFO  ] $FILENAME($FILESIZE): Smail Size"
fi