#!/bin/sh
# create and initialize elements(ontology) index
host=svc-elasticsearch:9200
# elements
curl -XDELETE http://$host/elements --retry 10
echo
curl -XPUT http://$host/elements --retry 10
echo
curl -H "Content-Type: application/json" --data @resources/element_mapping.json http://$host/elements/element/_mapping --retry 10
echo
