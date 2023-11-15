#!/bin/sh

podman run --privileged -it --rm \
     -p 27017:27017 mongo:latest
