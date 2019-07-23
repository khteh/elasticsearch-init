#!/bin/bash
set -x
#ulimit -l unlimited
host=svc-elasticsearch:9200
curl -XDELETE http://$host/aspnetapistarter.logs-* --retry 10
echo
curl -XDELETE http://$host/biz4x-backend.logs-* --retry 10
echo
curl -XDELETE http://$host/biz4x-frontend.logs-* --retry 10
echo
curl -XPUT -H "Content-Type: application/json" --data @/tmp/access_log_template.json http://$host/_template/access-log-template --retry 10
echo
