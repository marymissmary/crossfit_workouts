#!/bin/bash

source config.sh

http DELETE http://${HOST}:${PORT}/crossfit
http DELETE http://${HOST}:${PORT}/fjord
http DELETE http://${HOST}:${PORT}/fjord_v2.0
http DELETE http://${HOST}:${PORT}/testing

