#!/bin/bash

IP=$(hostname -i)
CONFIG=/app/kafka/config/server.properties

sed -i "s#_IP#$IP#g" $CONFIG

/app/kafka/bin/kafka-server-start.sh $CONFIG
