#!/bin/bash
# create and initialize fluentd index
host=svc-elasticsearch:9200
curl -XDELETE http://$host/iconverse.access.logs* --retry 10
echo
curl -XPUT -H "Content-Type: application/json" --data @resources/access_logs_template.json http://$host/_template/access-log-template --retry 10
echo
