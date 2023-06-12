#!/bin/bash

# melakukan build melalui docker file
docker build -t order-service:latest .

# melihat docker list images
docker images

# membuat tag pada item-app:v1 dengan tag pada docker hub
docker tag order-service:latest aminullohzaqi/order-service:latest

# login docker dengan credensial yang ada
echo $PASSWORD_DOCKER_HUB | docker login -u aminullohzaqi --password-stdin

# push image ke docker hub
docker push aminullohzaqi/order-service:latest
