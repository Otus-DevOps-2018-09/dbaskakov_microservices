# dbaskakov_microservices[![Build Status](https://travis-ci.com/Otus-DevOps-2018-09/dbaskakov_microservices.svg?branch=master)](https://travis-ci.com/Otus-DevOps-2018-09/dbaskakov_microservices)
dbaskakov microservices repository

# HW-14 docker-3
docker network create reddit
docker run -d --network=reddit --network-alias=post_db --network-alias=comment_db mongo:latest
docker run -d --network=reddit --network-alias=post_db --network-alias=comment_db -v reddit_db:/data/db mongo:latest
docker run -d --network=reddit --network-alias=post impel1o/post:1.0
docker run -d --network=reddit --network-alias=comment impel1o/comment:2.0
docker run -d --network=reddit -p 9292:9292 impel1o/ui:2.0

docker kill $(docker ps -q)


docker volume create reddit_db

# HW-13 docker-2

• docker logs reddit -f
• docker exec -it reddit bash

 gcloud compute firewall-rules create reddit-app \
 --allow tcp:9292 \
 --target-tags=docker-machine \
 --description="Allow PUMA connections" \
 --direction=INGRESS 

eval $(docker-machine env docker-host) 

export GOOGLE_PROJECT=docker-x

docker-machine create --driver google --google-machine-image https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/family/ubuntu-1604-lts --google-machine-type n1-standard-1 --google-zone europe-west1-b docker-host

# HW-12 docker-1

Изучены базовые команды для работы с контейнерами/образами

Добавлен трэвис
