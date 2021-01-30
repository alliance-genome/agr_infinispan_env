build: pull
	docker build -t agrdocker/agr_infinispan_env .

push: build
	docker push agrdocker/agr_infinispan_env

pull:
	docker pull agrdocker/agr_base_linux_env

bash:
	docker run -t -i agrdocker/agr_infinispan_env bash
