#!/bin/bash

# start or stop datanode

start_datanode()
{
    echo "starting..."
    hadoop-daemon.sh start datanode
    yarn-daemon.sh start nodemanager
    # yarn-daemon.sh start proxyserver
    # mr-jobhistory-daemon.sh start historyserver
}

stop_datanode()
{
    echo "stopping..."
    # mr-jobhistory-daemon.sh stop historyserver
    # yarn-daemon.sh stop proxyserver
    yarn-daemon.sh stop nodemanager
    hadoop-daemon.sh stop datanode
}

# check argument
[ -z $1 ] && exit 1;

# execute operation
case $1 in
  start)
    start_datanode;;
  stop)
    stop_datanode;;
  *)
    echo "usage: $(basename $0) [ start | stop ]";;
esac

# __END__
