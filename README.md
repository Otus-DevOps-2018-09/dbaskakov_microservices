# dbaskakov_microservices[![Build Status](https://travis-ci.com/Otus-DevOps-2018-09/dbaskakov_microservices.svg?branch=master)](https://travis-ci.com/Otus-DevOps-2018-09/dbaskakov_microservices)
dbaskakov microservices repository

## HW-21 k8s - 1

Пройден THF for k8s

добавлен плэйбук автоматизации Bootstraping etcd cluster

## HW-20 logging-1

 docker-machine create --driver google --google-machine-image https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/family/ubuntu-1604-lts \
 --google-machine-type n1-standard-1 \
 --google-open-port 5601/tcp \
 --google-open-port 9292/tcp \
 --google-open-port 9411/tcp \
 logging 

  docker-compose logs -f post 

  sudo sysctl -w vm.max_map_count=262144

  Поднят стэк EFK + zipkin ( docker-compose-logging.yml )
  Добавлен грок шаблон в конфиг fluentd  для полного парсинга ui service
  


## HW-19 prometheus-2

docker-compose f docker-compose-monitoring.yml up -d

https://cloud.docker.com/u/impel1o/repository/list

- add in makefile alertmanager
- add docker exp & dashboard
- add email notification

## HW-18 promoetheus

https://cloud.docker.com/u/impel1o/repository/list

docker-machine create --driver google \
 --google-machine-image https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/family/ubuntu-1604-lts \
 --google-machine-type n1-standard-1 \
 --google-zone europe-west1-b \
 docker-host 

 docker run --rm -p 9090:9090 -d --name prometheus prom/prometheus:v2.1.0 

 ## HW-17 gitlabci-2

git remote add gitlab2 http://35.246.175.49/homework/example2.git
git push gitlab2 gitlab-ci-2
git commit и git push gitlab2 gitlab-ci-2

## HW-16 gitlabci-1

### Main
- Установлены и настроены Gitlab, gitlab runner
- Создан базовый пайплайн, добавлены тесты

### Additional
1. нотификации с гитлаба приходят сюда --> #dmitry_baskakov

2. добавлен плэйбук для регистрации раннеров (создать вирт.машины(образ с установленным раннером можно создать пакером] в gcp и получить дин.инвентори можно например с помощью терраформа)
