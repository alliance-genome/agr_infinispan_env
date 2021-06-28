ARG REG=agrdocker
ARG DOCKER_PULL_TAG=latest

FROM ${REG}/agr_base_linux_env:${DOCKER_PULL_TAG}

COPY log4j2.xml /opt/infinispan/server/conf

ENTRYPOINT ["/opt/infinispan/bin/server.sh", "-b", "0.0.0.0"]
