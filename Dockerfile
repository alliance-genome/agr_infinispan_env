FROM agrdocker/agr_base_linux_env

ENTRYPOINT ["/opt/infinispan/bin/standalone.sh", "-b", "0.0.0.0"]
