FROM registry.ott-consult.de/oc/base:latest
MAINTAINER Joern Ott <joern.ott@ott-consult.de>

ENV JAVA_VERSION=8u162 \
    JAVA_BUILD_NUMBER=b16 \
    JAVA_DL_PATH=2f38c3b165be4555a1fa6e98c45e0808/ \
    JAVA_HOME=/usr/java/jdk1.8.0_162 \
    JAVA_CHECKSUM=d97f0f402bd65a9c26aa266246b0894c8d6762e82373377641ca779c46406299 \
    JCE_CHECKSUM=f3020a3922efd6626c2fff45695d527f34a8020e938a49292561f18ad1320b59 \
    GIT_COMMIT="x" \
    IMAGE_HISTORY="x"


COPY src /

RUN /tmp/install/oc-java.sh
