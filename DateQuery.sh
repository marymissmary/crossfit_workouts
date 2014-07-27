#!/bin/bash

## just a plain filter

index="workouts"
type="workout"

#dateQuery="2014-07-22 09:00:00"
dateFrom="now-2d"
dateTo="now"

queryString='{
  "query" :
  {
    "range" : 
    { 
      "date" : { "from" : "'${dateFrom}'" , "to" : "'${dateTo}'"}
    }
  }
}'

echo ${queryString} | http POST "http://127.0.0.1:9200/${index}/${type}/_search" 


echo
