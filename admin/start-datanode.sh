#!/bin/bash

hadoop_base="/usr/local/hadoop"
hadoop_conf=${hadoop_base}/etc/hadoop

for host in $(cat $hadoop_conf/slaves); do
  ssh $host "${hadoop_base}/admin/datanode-service.sh start"; 
done
