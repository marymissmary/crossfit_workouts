#!/bin/bash

source config.sh

http PUT http://${HOST}:${PORT}/${INDEX}
