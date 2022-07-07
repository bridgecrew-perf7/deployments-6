#!/bin/bash
if [ $# -ne 2 ];
then echo "please input two params,first is (metastore|hiveserver2),second is (start|stop)"
exit 0
fi
if [ "$1" == "metastore" ];
then
    if [ "$2" == "start" ];
then
    cd /var/log/hive
    echo "now is start metastore" 
    #nohup {{hive_bin_dir}}/hive --service metastore & 
    # su -l hive -c "nohup {{hive_bin_dir}}/hive --service metastore > /var/log/hive/metastore.out 2 > /var/log/hive/metastore.log   &"
    su -l hive -c "nohup {{hive_bin_dir}}/hive --service metastore 1> /var/log/hive/metastore.out 2> /var/log/hive/metastore.log &"
    exit 0
elif [ "$2" == "stop" ];
then
    metastore_pid=`ps -ef|grep "HiveMetaStore"|grep "JAVA"|awk '{print $2}'`
    kill ${metastore_pid}
    echo "-------metastore has stop"
    exit 0
else
    echo "second param please input 'start' or 'stop'"
    exit 0
fi
elif [ "$1" == "hiveserver2" ];
then
    if [ "$2" == "start" ];
    then
        cd /var/log/hive
        echo "now is start hiveserver2"
        #nohup {{hive_bin_dir}}/hive --service hiveserver2 & 
        su -l hive -c "nohup {{hive_bin_dir}}/hiveserver2 1>/var/log/hive/hiveserver.log 2>/var/log/hive/hiveserver.err &"
        exit 0
    elif [ "$2" == "stop" ];
    then
        hiveserver2_pid=`ps -ef|grep "HiveServer2"|grep "java"|awk '{print $2}'`
        kill ${hiveserver2_pid}
        echo "-------hiveserver has stop"
        exit 0
    else
        echo "second param please input 'start' or 'stop'"
        exit 0
    fi
else
    echo "first param please input 'metastore' or 'hiveserver2'"
fi