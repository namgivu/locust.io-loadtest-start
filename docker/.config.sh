#!/usr/bin/env bash
cSH=`cd $(dirname $BASH_SOURCE) && pwd`
cAH=`cd $cSH/.. && pwd`

export     IMAGE_NAME=namgivu/locust.io:trygooglesearch
export           PORT=20606
export CONTAINER_NAME=namgivu_locust.io_trygooglesearch
export   NETWORK_NAME=namgivu_locust.io_trygooglesearch_dockernetwork
