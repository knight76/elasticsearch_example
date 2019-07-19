#!/usr/bin/env bash

root="$(cd "$( dirname "${BASH_SOURCE[0]}")/.." && pwd )"
cd $root

docker pull docker.elastic.co/elasticsearch/elasticsearch:7.2.0

docker run -p 9200:9200 -p 9300:9300 -d -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.2.0
