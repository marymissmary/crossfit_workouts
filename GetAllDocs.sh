#!/bin/bash

## add document to database
index="workouts"
type="workout"
## list documents:


curl -X GET  http://127.0.0.1:9200/${index}/_search?pretty=true&q=*
