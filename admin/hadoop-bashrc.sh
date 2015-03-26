#!/bin/bash

# java settings
export JAVA_HOME="/usr/local/java"
export JAVA_BINPATH="${JAVA_HOME}/bin"

J_CLASSPATH=
for jar in $(find ${JAVA_HOME}/ -type f -name "*.jar"); do
  J_CLASSPATH=${J_CLASSPATH}:$jar
done
export CLASSPATH=${J_CLASSPATH}

# hadoop settings
# hadoop vars
export HADOOP_INSTALL=${HADOOP_INSTALL:-"/usr/local/hadoop"}
export HADOOP_HOME=$HADOOP_INSTALL
export HADOOP_CONF_DIR="${HADOOP_CONF_DIR:-$HADOOP_INSTALL/etc/hadoop}"
export HADOOP_HDFS_HOME="${HADOOP_HDFS_HOME:-$HADOOP_INSTALL}"


# map reduce vars
export HADOOP_MAPRED_HOME="${HADOOP_MAPRED_HOME:-$HADOOP_INSTALL}"
export HADOOP_COMMON_HOME="${HADOOP_COMMON_HOME:-$HADOOP_INSTALL}"

# yarn vars
export YARN_HOME="${YARN_HOME:-$HADOOP_INSTALL}"
export HADOOP_YARN_HOME="${HADOOP_YARN_HOME:-$HADOOP_INSTALL}"
export YARN_CONF_DIR="${YARN_CONF_DIR:-$HADOOP_INSTALL/etc/hadoop}"


# hadoop bin dirs
export HADOOP_BINPATH="${HADOOP_BINPATH:-$HADOOP_INSTALL/bin:$HADOOP_INSTALL/sbin}"

# adding hadoop jars in temp jar list
T_HADOOP_JARS=
for jar in $(find ${HADOOP_INSTALL}/ -type f -name "*.jar"); do
    T_HADOOP_JARS=$T_HADOOP_JARS:$jar
done

# setting t_hadoop_jars to hadoop classpath
export HADOOP_CLASSPATH="${HADOOP_CLASSPATH:-$T_HADOOP_JARS}"

export CLASSPATH=$CLASSPATH:$HADOOP_CLASSPATH
export PATH=$PATH:$JAVA_BINPATH:$HADOOP_BINPATH

#export PATH CLASSPATH HADOOP_CLASSPATH
#export HADOOP_INSTALL HADOOP_HOME HADOOP_MAPRED_HOME HADOOP_COMMON_HOME HADOOP_HDFS_HOME
#export YARN_HOME HADOOP_CONF_DIR

