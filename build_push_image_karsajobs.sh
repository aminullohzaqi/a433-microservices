#!/bin/bash

# melakukan build melalui docker file
docker build -t karsajobs:latest .

# melihat docker list images
docker images

# membuat tag pada item-app:v1 dengan tag pada docker hub
docker tag karsajobs:latest aminullohzaqi/karsajobs:latest

# login docker dengan credensial yang ada
echo $PASSWORD_DOCKER_HUB | docker login -u aminullohzaqi --password-stdin

# push image ke docker hub
docker push aminullohzaqi/karsajobs:latest
