FROM agrdocker/agr_base_linux_env

ENTRYPOINT ["/opt/infinispan/bin/server.sh", "-b", "0.0.0.0"]
