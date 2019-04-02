#!/bin/sh

echo "Filebeat starting babyyy"

nohup ./filebeat/filebeat -e -c /filebeat/filebeat.yml

