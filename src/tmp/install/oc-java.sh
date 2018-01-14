#!/bin/bash
set -e
set -x

source /tmp/install/functions.sh

install_software ca-certificates unzip
install_java8
cleanup unzip
