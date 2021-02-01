ARG ALLIANCE_RELEASE=latest
ARG REG=agrdocker
FROM ${REG}/agr_base_linux_env:${ALLIANCE_RELEASE}

ENTRYPOINT ["/opt/infinispan/bin/server.sh", "-b", "0.0.0.0"]
