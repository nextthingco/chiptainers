#!/bin/sh

CONTAINER_IMAGE=ntc-registry.githost.io/nextthingco/chiptainers/nodejs

docker build --no-cache=true -t "${CONTAINER_IMAGE}" .

