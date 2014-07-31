#!/bin/bash

# hadoop settings

# hadoop install root
export HADOOP_INSTALL=${HADOOP_INSTALL:-"/usr/local/hadoop"}

# hadoop home is same as install root
HADOOP_HOME=$HADOOP_INSTALL

# map reduce home is install root
export HADOOP_MAPRED_HOME="${HADOOP_MAPRED_HOME:-$HADOOP_INSTALL}"
export HADOOP_COMMON_HOME="${HADOOP_COMMON_HOME:-$HADOOP_INSTALL}"
export HADOOP_HDFS_HOME="${HADOOP_HDFS_HOME:-$HADOOP_INSTALL}"

# yarn home is install home
export YARN_HOME="${YARN_HOME:-$HADOOP_INSTALL}"

# hadoop conf directory
export HADOOP_CONF_DIR="${HADOOP_CONF_DIR:-$HADOOP_INSTALL/etc/hadoop}"

# hadoop bin dirs
export HADOOP_BINPATH="${HADOOP_BINPATH:-$HADOOP_INSTALL/bin:$HADOOP_INSTALL/sbin}"

# adding hadoop jars in temp jar list
T_HADOOP_JARS=
for jar in $HADOOP_INSTALL/*.jar; do
    T_HADOOP_JARS=$T_HADOOP_JARS:$jar
done

# setting t_hadoop_jars to hadoop classpath
export HADOOP_CLASSPATH="${HADOOP_CLASSPATH:-$T_HADOOP_JARS}"

## [[ CLASSPATH=$CLASSPATH:$HADOOP_CLASSPATH
PATH=$PATH:$HADOOP_INSTALL/bin:$HADOOP_INSTALL/sbin

#export PATH CLASSPATH HADOOP_CLASSPATH
#export HADOOP_INSTALL HADOOP_HOME HADOOP_MAPRED_HOME HADOOP_COMMON_HOME HADOOP_HDFS_HOME
#export YARN_HOME HADOOP_CONF_DIR

