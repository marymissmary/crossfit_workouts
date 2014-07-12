#!/bin/bash

## add document to database
index="workouts"
type="workout"
file="Doc.json" 
uuid=`uuidgen`

## list documents:
#http http://127.0.0.1:5984/workouts

## add document
curl -X PUT "http://127.0.0.1:9200/${index}/${type}/${uuid}" --data @${file}

#'{ "date" : "11/7/2014",
#  "time of day" : "6:00 pm",
#  "type" : "met con",
#  "coach" : "John",
#  "time" : "6:39",
#  "movements" : ["power clean and jerk"],
#  "rep scheme" : [30],
#  "weight" : [90],
#  "comments" : "Grace. Faster to do a few touch and go than drop every time. I should have gone harder today ",
#  "skill/strength" : ["Backsquats, 5 sets of 3 reps","Not super hard at 155 lbs. Go heavier next time"]
#}'


echo "done"
