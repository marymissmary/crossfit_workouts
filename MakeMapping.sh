#!/bin/bash

## create mapping

index="workouts"
type="workout"

             
curl -XPUT http://127.0.0.1:9200/${index}/${type}/_mapping -d '{ 
  "workout" : 
  {
    "properties" : 
    {
      "date"       : { "type" : "string" , "store" : true },
      "time"       : { "type" : "date"   , "format" : "hour_minute_second" , "store" : true },
      "rep scheme" : { "type" : "integer" , "store" : "true" },
      "weight"     : { "type" : "integer" , "store" : "true" } 
    }
  }
}'
