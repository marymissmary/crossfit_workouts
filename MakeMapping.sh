#!/bin/bash

## create mapping
## date formate from org.joda.time.format
## classic ISODateTimeFormat : dateTimeNoMillis
## Combines a full date and time without millis,
## separated by a 'T' (yyyy-MM-dd'T'HH:mm:ssZZ). 
## The time zone offset is 'Z' for zero, and of the form '±HH:mm' for non-zero. 
##  The parser is strict by default, thus time string 24:00 cannot be parsed.

index="workouts"
type="workout"

             
curl -XPUT http://127.0.0.1:9200/${index}/${type}/_mapping -d '{ 
  "workout" : 
  {
    "properties" : 
    {
      "date"       : { "type" : "date", "format" : "yyyy-MM-dd HH:mm:ss" , "store" : true },
      "min"       : { "type" : "integer" , "store" : true },
      "sec"       : { "type" : "integer" , "store" : true },
      "rep scheme" : { "type" : "integer" , "store" : "true" },
      "weight"     : { "type" : "integer" , "store" : "true" },
      "score"     : { "type" : "float" , "store" : "true" }, 
      "rounds"     : { "type" : "integer" , "store" : "true" } 
    }
  }
}'
