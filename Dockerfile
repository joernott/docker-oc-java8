FROM registry.ott-consult.de/oc/base:latest
LABEL MAINTAINER="joern.ott@ott-consult.de"

ENV JAVA_VERSION=8u191 \
    JAVA_BUILD_NUMBER=b12 \
    JAVA_DL_PATH=2787e4a523244c269598db4e85c51e0c/ \
    JAVA_HOME=/usr/java/jdk1.8.0_191-amd64 \
    JAVA_CHECKSUM=cefde0b2f2cbbf0441243c78dad863e6e06c91dcfaeaea8df704ce5fb80628f1 \
    JCE_CHECKSUM=f3020a3922efd6626c2fff45695d527f34a8020e938a49292561f18ad1320b59 \
    GIT_COMMIT="x" \
    IMAGE_HISTORY="x"


COPY src /

RUN /tmp/install/oc-java.sh
