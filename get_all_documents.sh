#!/bin/bash


source config.sh

http GET  http://${HOST}:${PORT}/${INDEX}/_search?size=100&q=* 
