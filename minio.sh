#!/bin/sh


mkdir -p ~/temp/minio/data

podman run -it --rm \
    -v ~/temp/minio/data:/data \
    -e MINIO_ROOT_USER=admin -e MINIO_ROOT_PASSWORD=mypass123 \
    -p 9000:9000  -p 9090:9090 quay.io/minio/minio server /data --console-address ":9090"
