#!/bin/bash
set -e
set -x

curl -sSo /tmp/install/functions.sh https://raw.githubusercontent.com/joernott/docker-oc-install-library/master/install_functions.sh
source /tmp/install/functions.sh

install_software ca-certificates unzip
install_java8
cleanup unzip
