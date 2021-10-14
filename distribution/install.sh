#/usr/bin/env bash

# this script is copied to the server and executed on the remote server for installation

GITHUB_USER=$1
ACCESS_TOKEN=$2
IMAGE=$3

docker login ghcr.io -u $GITHUB_USER -p $ACCESS_TOKEN
docker pull $IMAGE-appsrv:latest
docker image ls


