FROM agrdocker/agr_base_linux_env

WORKDIR /workdir

RUN mkdir /data

RUN wget https://s3.amazonaws.com/agr-build-files/infinispan-server-9.4.15.Final.zip
RUN unzip infinispan-server-9.4.15.Final.zip

