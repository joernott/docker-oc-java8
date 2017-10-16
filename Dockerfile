FROM registry.ott-consult.de/oc/base:latest
MAINTAINER Joern Ott <joern.ott@ott-consult.de>

ENV JAVA_VERSION=8u144 \
    JAVA_BUILD_NUMBER=b01 \
    JAVA_DL_PATH=090f390dda5b47b9b721c7dfaa008135/ \
    JAVA_HOME=/usr/java/jdk1.8.0_141 \
    JAVA_CHECKSUM=cdb016da0c509d7414ee3f0c15b2dae5092d9a77edf7915be4386d5127e8092f \
    JCE_CHECKSUM=f3020a3922efd6626c2fff45695d527f34a8020e938a49292561f18ad1320b59

COPY src /

RUN /tmp/install/oc-java.sh
