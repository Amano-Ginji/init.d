#!/bin/bash

source ~/.profile

# stand-alone
:<<comment
hadoop fs -test -e ~/hadoop/grep_example && \
  hadoop fs -rm -r ~/hadoop/grep_example

/usr/local/hadoop/bin/hadoop jar /usr/local/hadoop/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.6.0.jar grep ~/hadoop/input ~/hadoop/grep_example 'principal[.]*'
comment

# pseudo-distributed
hadoop fs -test -e /user/yaowq/test/output && \
  hadoop fs -rm -r /user/yaowq/test/output

hadoop jar $HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.6.0.jar grep \
  /user/yaowq/test/input \
  /user/yaowq/test/output \
  'principal[.]*'
