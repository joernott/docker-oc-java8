FROM registry.ott-consult.de/oc/base:latest
MAINTAINER Joern Ott <joern.ott@ott-consult.de>

ENV JAVA_VERSION=8u152 \
    JAVA_BUILD_NUMBER=b16 \
    JAVA_DL_PATH=aa0333dd3019491ca4f6ddbe78cdb6d0/ \
    JAVA_HOME=/usr/java/jdk1.8.0_152 \
    JAVA_CHECKSUM=b95c69b10e41d0f91e1ae6ef51086025535a43235858326a5a8fd9c5693ecc28 \
    JCE_CHECKSUM=f3020a3922efd6626c2fff45695d527f34a8020e938a49292561f18ad1320b59

COPY src /

RUN /tmp/install/oc-java.sh
