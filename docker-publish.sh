#!/bin/bash

docker-compose build libreforge-integration-app-all
docker image tag libreforge-integration-app-all:latest drkhu/libreforge-integration-app-all
docker image push drkhu/libreforge-integration-app-all
