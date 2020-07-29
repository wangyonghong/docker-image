#!/bin/sh

set -eux

dockerfiles=`git log --name-only -1 | grep Dockerfile`

for dockerfile in ${dockerfiles[@]}; do
    echo "start build: "$dockerfile
    ./build-docker-image.sh $dockerfile
done

