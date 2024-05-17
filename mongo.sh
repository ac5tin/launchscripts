#!/bin/sh

#podman run --privileged -it --rm \
#     -p 27017:27017 mongo:latest

podman run --privileged -it --rm \
     -e MONGODB_REPLICA_SET_MODE=primary \
     -e ALLOW_EMPTY_PASSWORD=yes \
     -e MONGODB_ADVERTISED_HOSTNAME=localhost \
     -p 27017:27017 bitnami/mongodb:latest
