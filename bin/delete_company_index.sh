#!/usr/bin/env bash

root="$(cd "$( dirname "${BASH_SOURCE[0]}")/.." && pwd )"
cd $root


curl -X DELETE localhost:9200/company
