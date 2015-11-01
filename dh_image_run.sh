#!/bin/bash

#source config.sh
export NAME=test_cont
docker stop ${NAME}
docker rm   ${NAME}


#docker run -it -P -v "$PWD/esdata":/usr/share/elasticsearch/data elasticsearch:1.7
docker run -it -P elasticsearch:1.7
#docker run -it -P --name ${NAME} elasticsearch:latest
#docker run -it -P --name ${NAME} elasticsearch:1.7
#docker run -it -P --name ${NAME} httpd:2.4

#docker run -it -p 9221:22 -p 9222:9200 -p 9333:9300 --name ${NAME} ${NAME}



