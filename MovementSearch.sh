#!/bin/bash

## simple query

index="workouts"
type="workout"

 queryString='{
   "query" :
  {
    "query_string" : 
    {
      "fields" : ["movements"],
      "query" : "burpees"
    }
  }
}'

#curl -X POST "http://127.0.0.1:9200/${index}/${type}/_search" -d '{
echo ${queryString} | http POST "http://127.0.0.1:9200/${index}/${type}/_search" 


echo
