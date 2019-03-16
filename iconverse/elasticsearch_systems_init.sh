#!/bin/sh
# remove, create and initialize systems index
host=svc-elasticsearch:9200
curl -XDELETE http://$host/systems --retry 10
echo
curl -XPUT -H "Content-Type: application/json" --data @settings.json http://$host/systems --retry 10
echo
curl -XPUT -H "Content-Type: application/json" --data @system_mapping.json http://$host/systems/system/_mapping --retry 10
echo
