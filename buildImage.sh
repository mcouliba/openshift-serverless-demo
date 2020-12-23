#!/bin/bash

DIRECTORY=`dirname $0`
LANGUAGE=$1
VERSION=$2
IMAGE="quay.io/mcouliba/${LANGUAGE}-serverless:${VERSION}"

docker build ${DIRECTORY}/${LANGUAGE}/${VERSION} -t ${IMAGE} && \
docker push ${IMAGE}