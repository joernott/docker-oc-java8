FROM registry.ott-consult.de/oc/base:latest
LABEL MAINTAINER="joern.ott@ott-consult.de"

ENV JAVA_VERSION=8u171 \
    JAVA_BUILD_NUMBER=b13 \
    JAVA_DL_PATH= 96a7b8442fe848ef90c96a2fad6ed6d1/ \
    JAVA_HOME=/usr/java/jdk1.8.0_172-amd64 \
    JAVA_CHECKSUM=48af6afd56252f5e6641fd0ad9009c056ee5d178129b4824cef4b976a655d375 \
    JCE_CHECKSUM=f3020a3922efd6626c2fff45695d527f34a8020e938a49292561f18ad1320b59 \
    GIT_COMMIT="x" \
    IMAGE_HISTORY="x"


COPY src /

RUN /tmp/install/oc-java.sh
