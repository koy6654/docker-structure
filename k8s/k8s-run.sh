#!/bin/bash

source /Users/luke/Projects/k8s-docker/k8s/my-app/scripts/docker-run.sh
source /Users/luke/Projects/k8s-docker/k8s/nginx/ingress/ingress-run.sh
sleep 5
source /Users/luke/Projects/k8s-docker/k8s/nginx/ingress/ingress-load-test.sh

# source /Users/luke/Projects/k8s-docker/k8s/nginx/nginx/nginx-run.sh

for i in {1..100}; do curl -s http://localhost:8080 | grep Hostname ; done | sort | uniq -c | sort -nr
