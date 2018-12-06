#!/bin/bash

DOCKER_REPO=${DOCKER_REPO}
NAMESPACE=${NAMESPACE:-ppiccolo}
ALPINE_VERSION=${ALPINE_VERSION:-3.9}
GRPC_VERSION=${GRPC_VERSION:-1.16}
BUILD_VERSION=${BUILD_VERSION:-0}
CONTAINER=${DOCKER_REPO}${NAMESPACE}
LATEST=${1:false}
#BUILDS=("protoc-all" "protoc" "prototool" "grpc-cli" "gen-grpc-gateway")
BUILDS=("protoc-all")
