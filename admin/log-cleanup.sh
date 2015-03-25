#!/bin/bash

hadoop_base="/usr/local/hadoop"
logdir="${hadoop_base}/log"

find ${logdir}/ -type f -exec rm -f {} \;
