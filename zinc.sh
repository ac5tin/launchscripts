#!/bin/sh

read -p "Enter full path for storing zinc data: " dir
podman run --rm -it -v dir:/data -e ZINC_DATA_PATH="/data" -p 4080:4080 \
    -e ZINC_FIRST_ADMIN_USER=admin -e ZINC_FIRST_ADMIN_PASSWORD=Complexpass#123 \
    --name zinc public.ecr.aws/zinclabs/zinc:latest

