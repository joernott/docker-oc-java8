FROM registry.ott-consult.de/oc/base:latest
MAINTAINER Joern Ott <joern.ott@ott-consult.de>

ENV JAVA_VERSION=8u162 \
    JAVA_BUILD_NUMBER=b16 \
    JAVA_DL_PATH=2f38c3b165be4555a1fa6e98c45e0808/ \
    JAVA_HOME=/usr/java/jdk1.8.0_162 \
    JAVA_CHECKSUM=d6808a4a7b96b72e8fbee28a223f94e43a07e970e757b87fc409644716ed7aa0 \
    JCE_CHECKSUM=f3020a3922efd6626c2fff45695d527f34a8020e938a49292561f18ad1320b59 \
    GIT_COMMIT="x" \
    IMAGE_HISTORY="x"


COPY src /

RUN /tmp/install/oc-java.sh
