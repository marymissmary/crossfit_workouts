#!/bin/bash

## add document to database
index="workouts"
type="workout"
docID="_search"

## add document
curl -X DELETE "http://127.0.0.1:9200/${index}/${type}/${docID}" 

