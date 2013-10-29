export MYIP="$(/sbin/ifconfig eth0 | grep "inet addr" | awk -F: '{print $2}' | awk '{print $1}')"
export PATH=$PATH:/home/yangqi3/bin/google_appengine/
dev_appserver.py --address=10.0.2.15 --port=8080 . 
exit
