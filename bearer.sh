#!/bin/sh

podman run --rm -it -v .:/tmp/scan bearer/bearer:latest-amd64 scan /tmp/scan
