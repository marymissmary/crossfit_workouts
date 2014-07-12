#!/bin/bash

## add document to database
index="workouts"
type="workout"
## list documents:
docID=C7F029B4-1656-4C3B-BD18-26AABF7F8B61


curl -X GET  http://127.0.0.1:9200/${index}/${type}/${docID} 
