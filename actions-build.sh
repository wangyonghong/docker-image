#!/bin/bash

set -eux

dockerfiles=$(git log --name-only -1 | grep Dockerfile || true)

if [[ ! -n "$dockerfiles" ]]; then
    exit 0
fi

for dockerfile in ${dockerfiles[@]}; do
    echo "start build: "$dockerfile
    ./build-docker-image.sh $dockerfile
done

