#!/bin/sh

podman run -it --rm \
    -p 8000:8000 dgraph/ratel:latest

