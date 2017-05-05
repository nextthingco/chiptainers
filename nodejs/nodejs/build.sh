#!/bin/sh

CONTAINER_IMAGE=ntc.githost.io/nextthingco/chiptainers/nodejs

docker build --no-cache=true -t "${CONTAINER_IMAGE}" .
