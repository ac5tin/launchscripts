#!/bin/sh

podman run --privileged -it --rm \
  -e POSTGRES_USER=root -e POSTGRES_PASSWORD=password \
  -e POSTGRES_DB=mydb -p 5432:5432 paradedb/paradedb:latest
