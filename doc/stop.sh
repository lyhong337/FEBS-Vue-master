PID=`ps -ef | grep febs_shiro_jwt-1.0.0-release.jar | grep -v grep | awk '{print $2}'`
if [ -z "$PID" ]
then
    echo Application is already stopped
else
    echo kill $PID
    kill -9 $PID
fi