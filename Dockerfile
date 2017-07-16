FROM centos:7
MAINTAINER Joern Ott <joern.ott@ott-consult.de>

ENV JAVA_VERSION=8u131 \
    JAVA_BUILD_NUMBER=b11 \
    JAVA_DL_PATH=d54c1d3a095b4ff2b6607d096fa80163/ \
    JAVA_HOME=/usr/java/jdk1.8.0_131 \
    JAVA_CHECKSUM=3d1e8cc66f4fd77acef6093329d5dd95bd06e4a03926c52df794f311a0c093f8

COPY src /

RUN /tmp/install/oc-java.sh
