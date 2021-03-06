build: comment post ui cloudprober prometheus alertmanager fluentd
push: push_comment push_post push_ui push_cloudprober push_prometheus push_alertmanager

logging_down:
	cd docker && docker-compose -f docker-compose-logging.yml down
	
logging_up:
	cd docker && docker-compose -f docker-compose-logging.yml up -d

push_fluentd:
	docker push ${USER_NAME}/fluentd

fluentd:
	cd logging/fluentd && docker build -t ${USER_NAME}/fluentd .

alertmanager:
	cd monitoring/alertmanager && docker build -t ${USER_NAME}/alertmanager .

push_alertmanager:
	docker push ${USER_NAME}/alertmanager

comment:
	cd src/comment && bash docker_build.sh

post:
	cd src/post-py && bash docker_build.sh

ui:
	cd src/ui && bash docker_build.sh

cloudprober:
	cd monitoring/cloudprober && docker build -t ${USER_NAME}/cloudprober .

prometheus:
	cd monitoring/prometheus && docker build -t ${USER_NAME}/prometheus .

push_comment:
	docker push ${USER_NAME}/comment

push_post:
	docker push ${USER_NAME}/post

push_ui:
	docker push ${USER_NAME}/ui

push_cloudprober:
	docker push ${USER_NAME}/cloudprober

push_prometheus:
	docker push ${USER_NAME}/prometheus