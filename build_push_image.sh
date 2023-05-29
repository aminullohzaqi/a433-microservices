#!/bin/bash

# melakukan build melalui docker file
docker build -t item-app:v1 .

# melihat docker list images
docker images

# membuat tag pada item-app:v1 dengan tag pada docker hub
docker tag item-app:v1 aminullohzaqi/item-app:v1

# login docker dengan credensial yang ada
echo $PASSWORD_DOCKER_HUB | docker login -u aminullohzaqi --password-stdin

# push image ke docker hub
docker push aminullohzaqi/item-app:v1
