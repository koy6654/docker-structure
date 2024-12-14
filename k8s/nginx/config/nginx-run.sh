#!/bin/bash

kubectl delete -f /Users/luke/Projects/k8s-docker/k8s/nginx/config/nginx.yml

kubectl apply -f /Users/luke/Projects/k8s-docker/k8s/nginx/config/nginx.yml

curl http://localhost:32100
