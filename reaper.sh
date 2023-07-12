#!/bin/bash
TAG=latest

REAPER_JMX_AUTH_USERNAME=reaperUser
REAPER_JMX_AUTH_PASSWORD=reaperPass

podman run \
    --rm -it \
    -p 8080:8080 \
    -p 8081:8081 \
    -e "REAPER_JMX_AUTH_USERNAME=${REAPER_JMX_AUTH_USERNAME}" \
    -e "REAPER_JMX_AUTH_PASSWORD=${REAPER_JMX_AUTH_PASSWORD}" \
    thelastpickle/cassandra-reaper:${TAG}
