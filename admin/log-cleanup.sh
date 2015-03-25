#!/bin/bash

hadoop_base="/usr/local/hadoop"
logdir="${hadoop_base}/logs"

find ${logdir}/ -type f -exec rm -f {} \;
