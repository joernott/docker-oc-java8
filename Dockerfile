FROM registry.ott-consult.de/oc/base:latest
LABEL MAINTAINER="joern.ott@ott-consult.de"

ENV JAVA_VERSION=8u172 \
    JAVA_BUILD_NUMBER=b11 \
    JAVA_DL_PATH=a58eab1ec242421181065cdc37240b08/ \
    JAVA_HOME=/usr/java/jdk1.8.0_172 \
    JAVA_CHECKSUM=6a27b5718a5266cc725478d0b2e30fdc9bdb74b4e496971ed0f3b9c334d08163 \
    JCE_CHECKSUM=f3020a3922efd6626c2fff45695d527f34a8020e938a49292561f18ad1320b59 \
    GIT_COMMIT="x" \
    IMAGE_HISTORY="x"


COPY src /

RUN /tmp/install/oc-java.sh
