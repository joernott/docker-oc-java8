#!/bin/bash
set -e
set -x

function install_software() {
    yum -y clean all
    yum -y update 
    yum -y install wget ca-certificates unzip
}

function install_java() {
    cd /tmp/
    wget -O /tmp/jdk.rpm -k \
        --header="Cookie: oraclelicense=accept-securebackup-cookie" \
        "http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION}-${JAVA_BUILD_NUMBER}/${JAVA_DL_PATH}jdk-${JAVA_VERSION}-linux-x64.rpm"
    wget -O /tmp/jce_policy-8.zip -k \
        --header="Cookie: oraclelicense=accept-securebackup-cookie" \
        http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip
    yum -y install /tmp/jdk.rpm
    cd ${JAVA_HOME}/jre/lib/security
    unzip /tmp/jce_policy-8.zip
}

function cleanup() {
    yum -y erase unzip
    yum clean all
    /bin/rm -rf /tmp/* 
}

install_software
install_java
cleanup
