# dbaskakov_microservices[![Build Status](https://travis-ci.com/Otus-DevOps-2018-09/dbaskakov_microservices.svg?branch=master)](https://travis-ci.com/Otus-DevOps-2018-09/dbaskakov_microservices)
dbaskakov microservices repository

# HW-15 gitlabci-1

 gcloud compute firewall-rules create reddit-app \
 --allow tcp:9292 \
 --target-tags=docker-machine \
 --description="Allow PUMA connections" \
 --direction=INGRESS 

eval $(docker-machine env docker-host) 

export GOOGLE_PROJECT=docker-x

docker-machine create --driver google --google-machine-image https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/family/ubuntu-1604-lts --google-machine-type n1-standard-1 --google-zone europe-west1-b docker-host
