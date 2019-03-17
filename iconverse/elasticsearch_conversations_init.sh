#!/bin/sh
# remove, create and initialize conversations index
host=svc-elasticsearch:9200
curl -XDELETE http://$host/conversations --retry 10
echo
curl -XPUT -H "Content-Type: application/json" --data @resources/settings.json http://$host/conversations --retry 10
echo
curl -XPUT -H "Content-Type: application/json" --data @resources/conversation_mapping.json http://$host/conversations/conversation/_mapping --retry 10
echo
