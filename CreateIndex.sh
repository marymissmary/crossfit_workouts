#!/bin/bash

## create database from scratch

index="workouts"
type="workout"

## clear everything before we start:
./DeleteMapping.sh

## make custom mapping
./MakeMapping.sh

## list all the files in the workout direcotry:
ls WorkoutsJSON/wod.*.json > workoutsFileList.txt

## add all these to the index
exec < workoutsFileList.txt
while read line
do
  echo $line
  uuid=`uuidgen`
  curl -X PUT "http://127.0.0.1:9200/${index}/${type}/${uuid}" --data @${line}
done


echo "done"
