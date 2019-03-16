#!/bin/sh
# remove, create and initialize messages index
host=svc-elasticsearch:9200
curl -XDELETE http://$host/messages --retry 10
echo
curl -XPUT -H "Content-Type: application/json" --data @settings.json http://$host/messages --retry 10
echo
curl -XPUT -H "Content-Type: application/json" --data @message_mapping.json http://$host/messages/message/_mapping --retry 10
echo
