#!/usr/bin/env bash

root="$(cd "$( dirname "${BASH_SOURCE[0]}")/.." && pwd )"
cd $root

curl -X POST "http://localhost:9200/company/_doc/" -H 'Content-Type: application/json' -d'
{
"name": "Andrew",
"age" : 45,
"experienceInYears" : 10
}
'
