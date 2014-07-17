#!/bin/bash

## add document to database
index="workouts"
type="workout"
## list documents:


#curl -X GET  http://127.0.0.1:9200/_status


http DELETE  http://127.0.0.1:9200/workouts/workout
http DELETE  http://127.0.0.1:9200/workouts/_mapping/workout
http DELETE  http://127.0.0.1:9200/workouts/workout/_mapping
