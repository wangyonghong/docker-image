#!/bin/sh

set -eux

DOCKERFILE=$1
DIRNAME=`dirname $1`
BASENAME=`basename $1`
IMAGE_NAME=`cat $1 | sed -n '2p' | awk '{print($2)}'`

if [[ ${BASENAME} != *Dockerfile ]]; then
    exit 0
fi

docker build ${DIRNAME} -f $1 -t ${IMAGE_NAME}

USERNAME=${DOCKER_HUB_USERNAME}
PASSWORD=${DOCKER_HUB_PASSWORD}

docker login -u ${USERNAME} -p ${PASSWORD}
docker push ${IMAGE_NAME}
