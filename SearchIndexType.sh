#!/bin/bash

## search index for given type

index="workouts"
type="workout"


## add document
#curl -X POST "http://127.0.0.1:9200/${index}/${type}/_search" -d '
#http POST "http://127.0.0.1:9200/${index}/${type}/_search" '{
#curl -X POST "http://127.0.0.1:9200/${index}/${type}/_search" -d '{
#http POST "http://127.0.0.1:9200/${index}/${type}/_search" '{
curl -X POST "http://127.0.0.1:9200/${index}/${type}/_search" -d '{
  "query" :
  {
    "query_string" : 
    {
       "query" : "kettle"
    }
  }
}'

echo
