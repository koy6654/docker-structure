#!/bin/bash

#delete kubernetes
kubectl delete -f /Users/luke/Projects/k8s-docker/k8s/my-app/my-app.yml

#delete image, container about docker-tutorial
# docker stop docker-tutorial
# docker rm docker-tutorial
docker rmi docker-tutorial

#build docker image
docker build -t docker-tutorial /Users/luke/Projects/k8s-docker/k8s/my-app
docker images | grep docker-tutorial

#apply kubernetes
kubectl apply -f /Users/luke/Projects/k8s-docker/k8s/my-app/my-app.yml

# #create docker container
# docker create --name docker-tutorial-node docker-tutorial:node
# docker start docker-tutorial-node 
