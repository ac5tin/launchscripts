#!/bin/sh

echo "Creating dgraph podman data volume"
podman volume create dgraphdata

podman run -it --rm -v dgraphdata:/dgraph \
    -p 9080:9080 -p 8080:8080 dgraph/standalone:latest

