#!/bin/bash


if [ $# -ne 1 ]; then
  echo '$1 = doc id'
  exit
fi

## add document to database
index="workouts"
type="workout"
docID=$1

## add document
curl -X DELETE "http://127.0.0.1:9200/${index}/${type}/${docID}" 

