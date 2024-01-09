#!/bin/bash
docker stop redis-cluster
docker rm redis-cluster
docker stop redis-node-1
docker rm redis-node-1
docker stop redis-node-2
docker rm redis-node-2
docker stop redis-cluster-entry
docker rm redis-cluster-entry
