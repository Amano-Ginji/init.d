#!/bin/bash

cd /usr/local/kafka

# restart broker
kafka-server-stop.sh
kafka-server-start.sh -daemon config/server.properties

# restart zookeeper
zookeeper-server-stop.sh
nohup zookeeper-server-start.sh config/zookeeper.properties &
