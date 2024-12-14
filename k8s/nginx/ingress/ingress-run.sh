#!/bin/bash

kubectl delete -f /Users/luke/Projects/k8s-docker/k8s/nginx/ingress/ingress-my-app.yml
kubectl delete -f /Users/luke/Projects/k8s-docker/k8s/nginx/ingress/ingress-nginx-controller.yml

kubectl apply -f /Users/luke/Projects/k8s-docker/k8s/nginx/ingress/ingress-my-app.yml
kubectl apply -f /Users/luke/Projects/k8s-docker/k8s/nginx/ingress/ingress-nginx-controller.yml

sleep 15

kubectl -n ingress-nginx port-forward svc/ingress-nginx-controller 8080:80
