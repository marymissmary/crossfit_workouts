#!/bin/bash

source config.sh

http DELETE http://${HOST}:${PORT}/${INDEX}

http PUT http://${HOST}:${PORT}/${INDEX}

export mapping='{"workout" : {   "properties" : {
                                     "time" : { "type" : "date" , "format" : "hour_minute" , "store" : true }
                                 }
                             }
                 }'

echo ${mapping}


http PUT http://${HOST}:${PORT}/${INDEX}/_mapping/workout <<< ${mapping}

