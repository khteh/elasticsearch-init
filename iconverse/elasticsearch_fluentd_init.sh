#!/bin/bash
# create and initialize fluentd index
host=svc-elasticsearch:9200
curl -XDELETE http://$host/fluentd --retry 10
echo
curl -XPUT http://$host/fluentd --retry 10
echo
curl -XPUT -H "Content-Type: application/json" --data @resources/fluentd_mapping.json http://$host/fluentd/fluentd/_mapping --retry 10
echo
