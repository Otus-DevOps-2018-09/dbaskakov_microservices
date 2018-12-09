# dbaskakov_microservices[![Build Status](https://travis-ci.com/Otus-DevOps-2018-09/dbaskakov_microservices.svg?branch=master)](https://travis-ci.com/Otus-DevOps-2018-09/dbaskakov_microservices)
dbaskakov microservices repository

# HW-15 docker-4

Базовое имя проекта образуется из названия каталога содержащего докер композ
Можно задать через -p \ либо в .env файле

docker-machine ssh docker-host

docker network connect <network> <container>
docker network connect front_net post
docker network connect front_net comment 

docker run -d --network=front_net -p 9292:9292 --name ui  impel1o/ui:2.0
docker run -d --network=back_net --name comment  impel1o/comment:2.0
docker run -d --network=back_net --name post  impel1o/post:1.0
docker run -d --network=back_net --name mongo_db --network-alias=post_db --network-alias=comment_db mongo:latest

 docker run -ti --rm --network none joffotron/docker-net-tools -c ifconfig
 docker run -ti --rm --network host joffotron/docker-net-tools -c ifconfig

 docker run -d --network=reddit --network-alias=post_db --networkalias=comment_db mongo:latest
docker run -d --network=reddit impel1o/post:1.0
docker run -d --network=reddit impel1o/comment:2.0
docker run -d --network=reddit -p 9292:9292 impel1o/ui:2.0

# HW-14 docker-3

docker build -t impel1o/post:1.0 ./post-py
docker build -t impel1o/comment:2.0 ./comment
docker build -t impel1o/ui:2.0 ./ui

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
