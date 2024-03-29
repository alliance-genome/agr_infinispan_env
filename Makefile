REG := 100225593120.dkr.ecr.us-east-1.amazonaws.com
DOCKER_PULL_TAG := latest
DOCKER_BUILD_TAG := latest

registry-docker-login:
ifneq ($(shell echo ${REG} | egrep "ecr\..+\.amazonaws\.com"),)
	@$(eval DOCKER_LOGIN_CMD=docker run --rm -it -v ~/.aws:/root/.aws amazon/aws-cli)
ifneq (${AWS_PROFILE},)
	@$(eval DOCKER_LOGIN_CMD=${DOCKER_LOGIN_CMD} --profile ${AWS_PROFILE})
endif
	@$(eval DOCKER_LOGIN_CMD=${DOCKER_LOGIN_CMD} ecr get-login-password | docker login -u AWS --password-stdin https://${REG})
	${DOCKER_LOGIN_CMD}
endif

build: pull-base
	docker build -t ${REG}/agr_infinispan_env:${DOCKER_BUILD_TAG} --build-arg REG=${REG} --build-arg DOCKER_PULL_TAG=${DOCKER_PULL_TAG} .

push: build registry-docker-login
	docker push ${REG}/agr_infinispan_env:${DOCKER_BUILD_TAG}

pull-base: registry-docker-login
	docker pull ${REG}/agr_base_linux_env:${DOCKER_PULL_TAG}

bash:
	docker run -t -i ${REG}/agr_infinispan_env:${DOCKER_BUILD_TAG} bash
