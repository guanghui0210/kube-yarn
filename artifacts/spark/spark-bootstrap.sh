#!/bin/bash

# Directory to find spark config
SPARK_CONFIG_DIR="/tmp/spark-config"
HADOOP_CONFIG_DIR="/tmp/hadoop-config"
SPARK_HOME="/usr/local/spark"
HADOOP_HOME="/usr/local/hadoop"

# Copy config files from volume mount
mkdir -p ${SPARK_HOME}/conf
cp ${SPARK_CONFIG_DIR}/* ${SPARK_HOME}/conf
cp ${HADOOP_CONFIG_DIR}/* ${HADOOP_HOME}/etc/hadoop
## spark need this dir
mkdir -p /usr/local/spark/lib_managed/jars
cd /root
java -cp dsp-assembly-1.0.0.jar com.tendcloud.dsp.server.DomainSubmmitManager
