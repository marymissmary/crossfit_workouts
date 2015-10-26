#!/bin/bash

## get range

index="workouts"
type="workout"

queryString='{
  "query" :
  {
    "range" : 
    {
      "min" : 
      {
        "gte" : 7,
        "lte" : 15
      }
    }
  }
}'

## add document
#curl -X POST "http://127.0.0.1:9200/${index}/${type}/_search" -d '{
echo ${queryString} | http POST "http://127.0.0.1:9200/${index}/${type}/_search" 

#http POST "http://127.0.0.1:9200/${index}/${type}/_search" -d '{ 
#"query" :
#  {
#    "query_string" : 
#    {
#       "query" : "kettle"
#    }
#  }
#}'

echo
