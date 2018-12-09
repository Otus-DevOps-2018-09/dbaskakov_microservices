# dbaskakov_microservices[![Build Status](https://travis-ci.com/Otus-DevOps-2018-09/dbaskakov_microservices.svg?branch=master)](https://travis-ci.com/Otus-DevOps-2018-09/dbaskakov_microservices)
dbaskakov microservices repository

# HW-16 gitlabci-1

1. нотификашки с гитлаба приходят сюда --> #dmitry_baskakov

2. one command
sudo gitlab-runner register \
  --non-interactive \
  --url "https://gitlab.com/" \
  --registration-token "PROJECT_REGISTRATION_TOKEN" \
  --executor "docker" \
  --docker-image alpine:3 \
  --description "docker-runner" \
  --tag-list "docker,aws" \
  --run-untagged \
  --locked="false" \