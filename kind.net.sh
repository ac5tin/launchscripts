#!/bin/sh
kind create cluster --config ./kind.net.config.yml --name c0


# Instructions for Custom Ingress NGINX for Kind
echo 'Please follow the instructions for installing Ingress NGINX for Kind: https://kind.sigs.k8s.io/docs/user/ingress/  or you can run the following: '
echo 'kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml'
