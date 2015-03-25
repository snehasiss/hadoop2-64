#!/bin/bash

# start or stop namenode

start_namenode()
{
    echo "starting..."
    hadoop-daemon.sh start namenode
    hadoop-daemon.sh start secondarynamenode
    yarn-daemon.sh start resourcemanager
    yarn-daemon.sh start proxyserver
    mr-jobhistory-daemon.sh start historyserver
}

stop_namenode()
{
    echo "stopping..."
    mr-jobhistory-daemon.sh stop historyserver
    yarn-daemon.sh stop proxyserver
    yarn-daemon.sh stop resourcemanager
    hadoop-daemon.sh stop secondarynamenode
    hadoop-daemon.sh stop namenode
}

# check argument
[ -z $1 ] && exit 1;

# execute operation
case $1 in
  start)
    start_namenode;;
  stop)
    stop_namenode;;
  *)
    echo "usage: $(basename $0) [ start | stop ]";;
esac

# __END__
