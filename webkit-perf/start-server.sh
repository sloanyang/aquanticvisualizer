export MYIP="$(/sbin/ifconfig eth0 | grep "inet addr" | awk -F: '{print $2}' | awk '{print $1}')"
export PATH=$PATH:/home/yangqi3/bin/google_appengine/
dev_appserver.py --host=$MYIP --port=8080 --admin_host=$MYIP --admin_port=8090 .
exit
