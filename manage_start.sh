#!/bin/bash
# 查找并杀死tomcat82进程
pid=$(ps -ef | grep tomcat83 | grep -v grep | awk '{print $2}')
if [ -n "$pid" ]; then
    kill -9 $pid
    echo "Tomcat83 process (PID: $pid) has been killed"
else
    echo "No tomcat83 process found"
fi
echo "start cp...."
cp -rf /home/v/manage/com   /home/x/tomcat83/webapps/ROOT/WEB-INF/classes/
echo "end cp"

echo "Tomcat83 is starting..."
source /etc/profile
sh /home/x/tomcat83/bin/startup.sh

echo "Tomcat83 is started !!!"