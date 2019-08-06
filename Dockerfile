FROM agrdocker/agr_base_linux_env

WORKDIR /workdir

RUN mkdir /data

RUN wget -q https://s3.amazonaws.com/agr-build-files/infinispan-server-9.4.15.Final.zip
RUN unzip -q infinispan-server-9.4.15.Final.zip
RUN rm infinispan-server-9.4.15.Final.zip
RUN mv infinispan-server-9.4.15.Final infinispan

