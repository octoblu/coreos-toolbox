#!/bin/bash

CONTAINERS=$(docker ps --no-trunc | grep -v UNIT | awk '{print $1":"$NF}')

for CONTAINER in $CONTAINERS; do
  NAME=$(echo $CONTAINER | sed s/.*://g)
  CONTAINER_ID=$(echo $CONTAINER | sed s/:.*//g)

  MEM_USED=$(cat /sys/fs/cgroup/memory/system.slice/docker-$CONTAINER_ID.scope/memory.usage_in_bytes)

  echo "$MEM_USED $NAME"
done
