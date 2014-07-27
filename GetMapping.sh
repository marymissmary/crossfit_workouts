#!/bin/bash


## show mapping

index="workouts"
type="workout"


http GET  http://127.0.0.1:9200/workouts/_mapping/workout
