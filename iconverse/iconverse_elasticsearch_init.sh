#!/bin/sh
# initialize iconverse elasticsearch
# elements
echo "Initializing elements index . . . . "
/opt/iconverse/elasticsearch_elements_init.sh
echo "Done"
echo

# conversations
echo "Initializing conversations index . . . . "
/opt/iconverse/elasticsearch_conversations_init.sh
echo "Done"
echo
    
# messages
echo "Initializing messages index . . . . "
/opt/iconverse/elasticsearch_messages_init.sh
echo "Done"
echo
    
# patterns
echo "Initializing patterns index . . . . "
/opt/iconverse/elasticsearch_patterns_init.sh
echo "Done"
echo

# enquiries
echo "Initializing enquiries index . . . . "
/opt/iconverse/elasticsearch_enquiries_init.sh
echo "Done"
echo
    
# systems
echo "Initializing systems index . . . . "
/opt/iconverse/elasticsearch_systems_init.sh
echo "Done"
echo

# access logs
echo "Initializing iconverse.access.logs index . . . . "
/opt/iconverse/elasticsearch_access_logs_init.sh
echo "Done"
echo
