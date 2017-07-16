#!/bin/bash
set -e

docker build -t registry.ott-consult.de/oc/java8:latest .
docker push registry.ott-consult.de/oc/java8:latest
