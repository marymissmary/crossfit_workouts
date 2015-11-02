#!/bin/bash

source config.sh

docker build -t ${NAME} .

docker stop ${NAME}
docker rm   ${NAME}

docker run -it -p 9222:9200 -p 9333:9300 \
                   -v /Users/marohrdanz/crossfit_workouts/esdata:/usr/share/elasticsearch/data   \
                   --name ${NAME} ${NAME}

                   #-v /Users/marymissmary/crossfit_workouts/esdata:/usr/share/elasticsearch/data   \


