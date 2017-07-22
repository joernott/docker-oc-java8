FROM registry.ott-consult.de/oc/base:latest
MAINTAINER Joern Ott <joern.ott@ott-consult.de>

ENV JAVA_VERSION=8u141 \
    JAVA_BUILD_NUMBER=b15 \
    JAVA_DL_PATH=336fa29ff2bb4ef291e347e091f7f4a7/ \
    JAVA_HOME=/usr/java/jdk1.8.0_141 \
    JAVA_CHECKSUM=c3586f6ad0cb6cf4a00a0610fc50004370820b6021c58642de2873db99e9a6c9 \
    JCE_CHECKSUM=f3020a3922efd6626c2fff45695d527f34a8020e938a49292561f18ad1320b59

COPY src /

RUN /tmp/install/oc-java.sh
