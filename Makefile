build: pull
	docker build -t agrdocker/agr_cacher_env .

push: build
	docker push agrdocker/agr_cacher_env

pull:
	docker pull agrdocker/agr_base_linux_env

bash:
	docker run -t -i agrdocker/agr_cacher_env bash
