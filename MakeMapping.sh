#!/bin/bash

## create mapping

index="workouts"
type="workout"

             
curl -XPUT http://127.0.0.1:9200/${index}/${type}/_mapping -d '{ 
  "workout" : 
  {
    "properties" : 
    {
      "date"       : { "type" : "date", "format" : "date_time_no_millis" , "store" : true },
      "min"       : { "type" : "integer" , "store" : true },
      "sec"       : { "type" : "integer" , "store" : true },
      "rep scheme" : { "type" : "integer" , "store" : "true" },
      "weight"     : { "type" : "integer" , "store" : "true" },
      "score"     : { "type" : "float" , "store" : "true" }, 
      "rounds"     : { "type" : "integer" , "store" : "true" } 
    }
  }
}'
