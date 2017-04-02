#!/bin/bash

# NOTE(yaowq): may be conflict with last version's data
#rm -rf /tmp/hadoop-yaowq/

# dfs
# namenode: http://localhost:50070/
# dfs: hdfs://localhost:8020/
/usr/local/hadoop/sbin/stop-dfs.sh

# NOTE(yaowq): need format after restart ???
# Answer: No. But the tmp dir should not be /tmp/xxx
#hdfs namenode -format

/usr/local/hadoop/sbin/start-dfs.sh

# NOTE(yaowq): follow the "hdfs namenode -format"
#hdfs dfs -mkdir /user/
#hdfs dfs -mkdir /user/yaowq
#hdfs dfs -mkdir /user/yaowq/test/
#hdfs dfs -put ~/hadoop/input /user/yaowq/test/

# yarn
# resource manager: http://localhost:8088/
/usr/local/hadoop/sbin/stop-yarn.sh
/usr/local/hadoop/sbin/start-yarn.sh

# history server
/usr/local/hadoop/sbin/mr-jobhistory-daemon.sh start historyserver

# hbase
/usr/local/hbase/sbin/start-hbase.sh

# spark
/usr/local/spark/sbin/start-all.sh
