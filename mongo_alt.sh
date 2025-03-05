#!/bin/sh

#podman run --privileged -it --rm \
#  -p 27017:27017 --hostname localhost mongo:latest mongod --replSet rs0 --bind_ip_all

# podman exec -it xxx mongosh
# rs.initiate({ _id: "rs0", members: [{ _id: 0, host: "localhost:27017" }] });
#rs.status();

# Store container name for easier reference
RANDOM_STRING=$(openssl rand -hex 4)
CONTAINER_NAME="mongodb-$RANDOM_STRING"

# Step 1: Launch MongoDB container with replica set configuration
echo "Starting MongoDB container..."
podman run --privileged -it -d --rm \
  -p 27017:27017 \
  --name "$CONTAINER_NAME" \
  --hostname localhost \
  mongo:latest \
  mongod --replSet rs0 --bind_ip_all

# Wait a few seconds to ensure MongoDB is fully started
echo "Waiting for MongoDB to initialize..."
sleep 5

# Step 2 & 3: Access mongosh and initiate replica set
echo "Configuring replica set..."
podman exec -it "$CONTAINER_NAME" mongosh --quiet --eval '
  rs.initiate({
    _id: "rs0",
    members: [
      { _id: 0, host: "localhost:27017" }
    ]
  })
'

echo "MongoDB replica set setup complete!"
echo "Container is running with name: $CONTAINER_NAME"
echo "To access: podman exec -it $CONTAINER_NAME mongosh"
echo "To stop: podman stop $CONTAINER_NAME"
