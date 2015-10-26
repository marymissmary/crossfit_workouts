#!/bin/bash


source config.sh

## simple query

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
echo ${queryString} | http POST "http://${HOST}:${PORT}/${INDEX}/workout/_search" 


echo
