ARG REG=agrdocker
ARG DOCKER_PULL_TAG=latest

FROM ${REG}/agr_base_linux_env:${DOCKER_PULL_TAG}

ENTRYPOINT ["/opt/infinispan/bin/server.sh", "-b", "0.0.0.0"]
