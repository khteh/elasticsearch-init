#!/bin/sh
# create and initialize enquiries index
host=svc-elasticsearch:9200
curl -XDELETE http://$host/enquiries --retry 10
echo
curl -XPUT http://$host/enquiries --retry 10
echo
curl -XPUT -H "Content-Type: application/json" --data @enquiry_mapping.json http://$host/enquiries/enquiry/_mapping --retry 10
echo
