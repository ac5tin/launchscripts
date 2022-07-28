#!/bin/sh

kubectl proxy & podman run --rm -it --network=host hjacobs/kube-ops-view
