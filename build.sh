#!/bin/bash
set -e

docker build --no-cache=true -t registry.ott-consult.de/oc/java8:latest .
docker push registry.ott-consult.de/oc/java8:latest
