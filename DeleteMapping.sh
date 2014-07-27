#!/bin/bash

## make elasticsearch mapping

index="workouts"
type="workout"




http DELETE  http://127.0.0.1:9200/workouts/workout
http DELETE  http://127.0.0.1:9200/workouts/_mapping/workout
http DELETE  http://127.0.0.1:9200/workouts/workout/_mapping
