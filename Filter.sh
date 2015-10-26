#!/bin/bash

## just a plain filter

index="workouts"
type="workout"

queryString='{
  "query" :
  {
    "filtered" : 
    {
      "filter" :
      {
        "range" : { "min" : { "lte" : 5 }}
      }
    }
  }
}'

echo ${queryString} | http POST "http://127.0.0.1:9200/${index}/${type}/_search" 


echo
