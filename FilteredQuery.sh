#!/bin/bash

# Filtering first, then query

index="workouts"
type="workout"

queryString='{
  "query" :
  {
    "filtered" : 
    {
      "query"  :
      {
        "query_string" : {"query" : "kettle"}
      },
      "filter" :
      {
        "range" : { "min" : { "gte" : 15 }}
      }
    }
  }
}'

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
