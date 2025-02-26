#!/bin/sh

podman run --privileged -it --rm \
  -p 27017:27017 --hostname localhost mongo:latest mongod --replSet rs0 --bind_ip_all

# podman exec -it xxx mongosh
# rs.initiate({ _id: "rs0", members: [{ _id: 0, host: "localhost:27017" }] });
#rs.status();

#podman run --privileged -it --rm \
#     -e MONGODB_REPLICA_SET_MODE=primary \
#     -e ALLOW_EMPTY_PASSWORD=yes \
#     -e MONGODB_ADVERTISED_HOSTNAME=localhost \
#     -p 27017:27017 bitnami/mongodb:latest
