#!/bin/bash
set -x
#ulimit -l unlimited
host=kyberlife-es-http:9200
curl -XDELETE http://$host/kyberlifeiam.logs-* --retry 10
echo
curl -XDELETE http://$host/kyberlifeproduct.logs-* --retry 10
echo
curl -XPUT -H "Content-Type: application/json" --data @/tmp/access_log_template.json -u elastic:$ELASTICSEARCH_PASSWORD -k https://$host/_template/access-log-template --retry 10
echo