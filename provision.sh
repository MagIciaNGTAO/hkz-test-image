#!/bin/bash

cd /tmp

curl -L http://archive.apache.org/dist/kafka/0.8.1.1/kafka_2.9.2-0.8.1.1.tgz | tar xz
curl -L http://archive.apache.org/dist/zookeeper/zookeeper-3.4.6/zookeeper-3.4.6.tar.gz | tar xz
curl -L http://archive.apache.org/dist/hbase/hbase-0.98.6/hbase-0.98.6-hadoop2-bin.tar.gz | tar xz

mv kafka* /app/kafka
mv zookeeper* /app/zookeeper
mv hbase* /app/hbase

base-setup
