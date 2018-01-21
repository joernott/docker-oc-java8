FROM registry.ott-consult.de/oc/base:latest
LABEL MAINTAINER="joern.ott@ott-consult.de"

ENV JAVA_VERSION=8u162 \
    JAVA_BUILD_NUMBER=b12 \
    JAVA_DL_PATH=0da788060d494f5095bf8624735fa2f1/ \
    JAVA_HOME=/usr/java/jdk1.8.0_162 \
    JAVA_CHECKSUM=20acf9bafb4ea10688812074942af480d34fd837ecd234173e80e2b53126b46b \
    JCE_CHECKSUM=f3020a3922efd6626c2fff45695d527f34a8020e938a49292561f18ad1320b59 \
    GIT_COMMIT="x" \
    IMAGE_HISTORY="x"


COPY src /

RUN /tmp/install/oc-java.sh
