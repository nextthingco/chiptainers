#!/bin/sh

CONTAINER_IMAGE=ntc-registry.githost.io/nextthingco/chiptainers/google_assistant

docker build --no-cache=true -t "${CONTAINER_IMAGE}" .
