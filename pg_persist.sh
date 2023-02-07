#!/bin/sh


podman volume create pgdata

podman run -it --rm \
    -v pgdata:/home/postgres/data -e PGDATA=/home/postgres/data \
    -e POSTGRES_USER=root -e POSTGRES_PASSWORD=password \
    -e POSTGRES_DB=mydb  -p 5432:5432 postgres:15
     


# podman volume rm pgdata
