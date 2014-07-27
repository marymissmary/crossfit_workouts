#!/bin/bash

## just a plain filter

index="workouts"
type="workout"

dateQuery="2014-07-22 09:00:00"

queryString='{
  "query" :
  {
    "range" : 
    { 
      "date" : { "from" : "'${dateQuery}'" }
    }
  }
}'

echo ${queryString} | http POST "http://127.0.0.1:9200/${index}/${type}/_search" 


echo
