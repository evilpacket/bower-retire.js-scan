#!/bin/bash

if [ -e "./watermark" ]; then
    WATERMARK=`cat watermark`
else
    WATERMARK='10digit-geo'
fi
FOUNDWATERMARK=false

for URL in `ls /mnt/scandata/bower`; do

    if [ "$URL" == "$WATERMARK" ]; then
        FOUNDWATERMARK=true
        echo "FOUND WATERMARK"
    fi
  
    if [ "$FOUNDWATERMARK" == true ]; then 
        echo "SCANNING: ${URL}"

        retire -j --jspath "/mnt/scandata/bower/$URL" > /dev/null
        echo "DONE SCANNING: ${URL}"
        echo ${URL} > watermark
        echo "------------------------------------------------------------"

    fi 
done

