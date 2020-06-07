#!/usr/bin/env bash
SH=`cd $(dirname $BASH_SOURCE) && pwd`
AH=`cd $SH/.. && pwd`

pipenv run locust -f "$AH/src/locustfile.py"
