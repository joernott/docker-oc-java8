FROM centos:7
MAINTAINER Joern Ott <joern.ott@ott-consult.de>

ENV JAVA_VERSION=8u131 \
    JAVA_BUILD_NUMBER=b11 \
    JAVA_DL_PATH=d54c1d3a095b4ff2b6607d096fa80163/ \
    JAVA_HOME=/usr/java/jdk1.8.0_131

COPY src /

RUN /tmp/install/oc-java.sh
