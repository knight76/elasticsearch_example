#!/usr/bin/env bash

root="$(cd "$( dirname "${BASH_SOURCE[0]}")/.." && pwd )"
cd $root

curl -X PUT "localhost:9200/company" -H 'Content-Type: application/json' -d'
{
  "settings": {
    "number_of_shards": 1,
    "number_of_replicas": 1
  },
  "mappings": {
    "properties": {
      "age": {
        "type": "integer"
      },
      "experienceInYears": {
        "type": "long"
      },
      "name": {
        "type": "text"
      }
    }
  }
}
'
