RSYNC DATA
==============================

* * * * * /usr/bin/curl -k https://stagetwo/donisontheway/dumpdb >> /run/media/netmachine/Safe/Installation/Code/React/Xray/client/src/remote/db/remotejson.json ---- For download data from stage2 for every minute


#!/bin/bash
PATH=$PATH:/bin:/usr/bin:/usr/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export PATH
NAS = 192.168.12.51
synccnc2(){
	checkNAS = `df -h | grep NAS | grep -v "grep" | wc -l`
	if [ $checkNAS -eq 1 ];	then # If NAS id mounted then 
		if (( $(ps ax | grep rsync | grep mount | wc -l) < 1 )); then /usr/bin/rsync -azh /var/www/html/cnc/app/mount/ /var/www/html/cnc/app/tmpm/; fi;
	fi
}
synccnc2
