ARG DOCKER_IMAGE_TAG=latest
ARG REG=agrdocker
FROM ${REG}/agr_base_linux_env:${DOCKER_IMAGE_TAG}

ENTRYPOINT ["/opt/infinispan/bin/server.sh", "-b", "0.0.0.0"]
