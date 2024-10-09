#!/bin/sh

podman run \
  --rm -it \
  -p 4566:4566 \
  -p 4510-4559:4510-4559 \
  localstack/localstack

# to create sqs
# awslocal sqs create-queue --queue-name localstack-queue
