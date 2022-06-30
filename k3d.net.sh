#!/bin/sh

KUBECONFIG=~/.kube/config k3d cluster create c0 --servers 3 --agents 2 \
    --k3s-arg '--no-deploy=traefik@server:*' \
    --port "80:80@loadbalancer" --port "443:443@loadbalancer" \
    --wait
