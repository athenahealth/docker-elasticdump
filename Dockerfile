FROM oraclelinux:7.1

# Install EPEL
RUN yum --assumeyes install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
    && yum --assumeyes clean all \
    && rm -rf /var/cache/yum/*

RUN yum --assumeyes --enablerepo=epel-testing install \
        elasticdump \
    && yum --assumeyes clean all \
    && rm -rf /var/cache/yum/*

ENTRYPOINT ["/usr/bin/elasticdump"]