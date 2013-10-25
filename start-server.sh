export MYIP="$(/sbin/ifconfig eth0 | grep "inet addr" | awk -F: '{print $2}' | awk '{print $1}')"
export PATH=$PATH:/home/yangq/google_appengine/
dev_appserver.py --host=$MYIP --port=8180 --admin_host=$MYIP --admin_port=8100 . 
exit
