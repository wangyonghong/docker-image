#!/bin/sh

set -eux

USERNAME=${DOCKER_HUB_USERNAME}
PASSWORD=${DOCKER_HUB_PASSWORD}
REGISTRY=https://index.docker.io
IMAGE_NAME=$1

docker login -u ${USERNAME} -p ${PASSWORD} ${REGISTRY}
docker info
docker push ${IMAGE_NAME}
