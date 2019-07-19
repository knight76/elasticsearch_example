#!/usr/bin/env bash

root="$(cd "$( dirname "${BASH_SOURCE[0]}")/.." && pwd )"
cd $root

docker kill `docker ps  | grep 'docker.elastic.co/elasticsearch/elasticsearch:7.2.0' | awk '{print $1}'`
