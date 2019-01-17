FROM registry.ott-consult.de/oc/base:latest
LABEL MAINTAINER="joern.ott@ott-consult.de"

ENV JAVA_VERSION=8u202 \
    JAVA_BUILD_NUMBER=b08 \
    JAVA_DL_PATH=1961070e4c9b4e26a04e7f5a083f551e/ \
    JAVA_HOME=/usr/java/jdk1.8.0_191-amd64 \
    JAVA_CHECKSUM=fd93c7205e223fb399e566712d90fc1f1168924c5b0089bf0c3cae2dcfa23887 \
    JCE_CHECKSUM=f3020a3922efd6626c2fff45695d527f34a8020e938a49292561f18ad1320b59 \
    GIT_COMMIT="x" \
    IMAGE_HISTORY="x"


COPY src /

RUN /tmp/install/oc-java.sh

#https://download.oracle.com/otn-pub/java/jdk/8u202-b08/1961070e4c9b4e26a04e7f5a083f551e/jdk-8u202-linux-x64.rpm