#!/bin/bash

source config.sh

## list all the files in the workout direcotry:
ls WorkoutsJSON/wod.*.json > workoutsFileList.txt

## add all these to the index
exec < workoutsFileList.txt
while read line
do
  echo $line
  #WorkoutsJSON/wod.2014.07.07.json
  id=`echo $line | awk -F. '{print($2)"-"($3)"-"($4)}'`
  echo "indexing document:  $id"
  curl -X PUT "http://${HOST}:${PORT}/${INDEX}/workout/${id}" --data @${line}
done


echo "done"
