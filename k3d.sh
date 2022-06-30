#!/bin/sh

KUBECONFIG=~/.kube/config k3d cluster create c0 --servers 3 --agents 2
