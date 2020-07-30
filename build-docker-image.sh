#!/bin/bash

set -eux

DOCKERFILE=$1
DIRNAME=`dirname $1`
BASENAME=`basename $1`

if [[ ${BASENAME} != *Dockerfile ]]; then
    exit 0
fi

IMAGE_NAMES=(`cat $1 | sed -n '/# yonghongwang/p' | awk '{print($2)}' |  awk -v RS='' '{gsub("\n"," "); print}'`)

if [[ ! -n "$IMAGE_NAMES" ]]; then
    exit 0
fi

IMAGE_NAME=${IMAGE_NAMES[0]}

# docker build ${DIRNAME} -f $1 -t ${IMAGE_NAME}
for((i=1;i<${#IMAGE_NAMES[@]};i++)) do
docker tag $IMAGE_NAME ${IMAGE_NAMES[i]}
done;

USERNAME=${DOCKER_HUB_USERNAME}
PASSWORD=${DOCKER_HUB_PASSWORD}

docker login -u ${USERNAME} -p ${PASSWORD}
for((i=0;i<${#IMAGE_NAMES[@]};i++)) do
docker push ${IMAGE_NAMES[i]}
done;

