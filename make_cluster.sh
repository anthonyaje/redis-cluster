#!/bin/bash

LOGFILE=log.make_cluster
exec > $LOGFILE

redis-cli -h 129.97.173.71 -p 6379 CLUSTER MEET 129.97.173.73 6379
redis-cli -h 129.97.173.71 -p 6379 CLUSTER MEET 129.97.173.78 6379

for slot in {0..5460}; do 
    redis-cli -h 129.97.173.71 -p 6379 CLUSTER ADDSLOTS $slot; 
done;
for slot in {5461..10922}; do 
    redis-cli -h 129.97.173.73 -p 6379 CLUSTER ADDSLOTS $slot; 
done;
for slot in {10923..16383}; do 
    redis-cli -h 129.97.173.78 -p 6379 CLUSTER ADDSLOTS $slot; 
done;

