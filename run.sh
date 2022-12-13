#!/bin/bash
set -x
#ulimit -l unlimited
host=kyberlife-es-default:9200
curl -s -XDELETE http://$host/kyberlifeiam.logs-* --retry 10
echo
curl -s -XDELETE http://$host/kyberlifeproduct.logs-* --retry 10
echo
curl -s -XPUT -H "Content-Type: application/json" --data @/tmp/access_log_template.json -u $ELASTICSEARCH_USERNAME:$ELASTICSEARCH_PASSWORD -k https://$host/_template/access-log-template --retry 10
echo