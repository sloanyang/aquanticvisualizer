export MYIP="$(/sbin/ifconfig eth1 | grep "inet addr" | awk -F: '{print $2}' | awk '{print $1}')"
export PATH=$PATH:/home/yangqi3/bin/google_appengine/
dev_appserver.py --host=$MYIP --port=8080 --admin_host=$MYIP --admin_port=8090 --storage_path=$PWD/appengine.webkit-perf.yangqi3 .
exit
