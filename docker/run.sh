#!/usr/bin/env bash
SH=`cd $(dirname $BASH_SOURCE) && pwd`
AH=`cd $SH/.. && pwd`

source "$SH/.config.sh"
    docker network create  --driver bridge  $NETWORK_NAME || true  # create network if not exists ref. https://stackoverflow.com/a/48643576/248616
    docker stop -t0 $CONTAINER_NAME || true ; docker rm -f $CONTAINER_NAME || true

        docker run  --name $CONTAINER_NAME  -p $PORT:8089         --net $NETWORK_NAME  -d  --restart unless-stopped  $IMAGE_NAME
        #                                       ours:locust_port

    sleep 6
        echo; docker ps | grep -E "$IMAGE_TAG|$CONTAINER_NAME|$PORT|IMAGE" --color=always
            : should_see
            # CONTAINER ID        IMAGE                               COMMAND                  CREATED             STATUS                        PORTS               NAMES
            # b69c9e704522        namgivu/locust.io:trygooglesearch   "/bin/sh -c 'pipenv …"   7 seconds ago       Restarting (1) 1 second ago                       namgivu_locust.io_trygooglesearch
        echo; docker logs $CONTAINER_NAME
