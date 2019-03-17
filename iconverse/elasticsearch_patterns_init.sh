#!/bin/sh
# create and initialize patterns index
host=svc-elasticsearch:9200
# kb
curl -XDELETE http://$host/patterns --retry 10
echo
curl -XPUT http://$host/patterns --retry 10
echo
curl -XPUT -H "Content-Type: application/json" --data @resources/pattern_mapping.json http://$host/patterns/pattern/_mapping --retry 10
echo
