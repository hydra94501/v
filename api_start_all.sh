#!/bin/bash
# 查找并杀死tomcat82进程
pid=$(ps -ef | grep tomcat82 | grep -v grep | awk '{print $2}')
if [ -n "$pid" ]; then
    kill -9 $pid
    echo "Tomcat82 process (PID: $pid) has been killed"
else
    echo "No tomcat82 process found"
fi
echo "start cp...."
cp -rf /home/v/api/classes   /home/x/tomcat82/webapps/ROOT/WEB-INF/classes/
echo "end cp"

echo "Tomcat82 is starting..."
source /etc/profile
sh /home/x/tomcat82/bin/startup.sh

echo "Tomcat82 is started !!!"