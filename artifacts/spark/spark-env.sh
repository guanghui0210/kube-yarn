#!/usr/bin/env bash
export SPARK_HISTORY_OPTS="-Dspark.history.fs.logDirectory=hdfs://dcnameservice/user/spark/historylogs"
export HADOOP_HOME=/usr/local/hadoop
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
export SPARK_HOME=/usr/local/spark
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HADOOP_HOME/lib/native
export SPARK_LIBRARY_PATH=$SPARK_LIBRARY_PATH:$HADOOP_HOME/lib/native
export SPARK_DIST_CLASSPATH=$(hadoop classpath)
#export SPARK_CLASSPATH=$SPARK_CLASSPATH:$HADOOP_HOME/share/hadoop/yarn/:$HADOOP_HOME/share/hadoop/yarn/lib/:$HADOOP_HOME/share/hadoop/common/:$HADOOP_HOME/share/hadoop/common/lib/:$HADOOP_HOME/share/hadoop/hdfs/:$HADOOP_HOME/share/hadoop/hdfs/lib/:$HADOOP_HOME/share/hadoop/mapreduce/:$HADOOP_HOME/share/hadoop/mapreduce/lib/:$HADOOP_HOME/share/hadoop/tools/lib/:$SPARK_HOME/lib:
