#!/bin/bash
set -e
set -x

source /tmp/install/functions.sh

install_software ca-certificates java-1.8.0-openjdk
cleanup unzip
