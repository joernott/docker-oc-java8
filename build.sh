#!/bin/bash

docker build . registry.ott-consult.de/oc/java8:latest
docker push registry.ott-consult.de/oc/java8:latest
