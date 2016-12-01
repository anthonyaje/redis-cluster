#!/bin/bash
echo "ask ugster04:"
redis-cli -h 129.97.173.71 -p 6379 CLUSTER NODES
echo "ask ugster06:"
redis-cli -h 129.97.173.73 -p 6379 CLUSTER NODES
echo "ask ugster11:"
redis-cli -h 129.97.173.78 -p 6379 CLUSTER NODES
