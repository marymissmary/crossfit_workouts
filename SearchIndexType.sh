#!/bin/bash

## search index for given type

index="workouts"
type="workout"


## add document
#curl -X POST "http://127.0.0.1:9200/${index}/${type}/_search" -d '
http POST "http://127.0.0.1:9200/${index}/${type}/_search" '{
  "query" :
  {
    "query_string" : 
    {
       "query" : "one"
    }
  }
}'

echo
