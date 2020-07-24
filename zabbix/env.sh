#1/bin/bash
zbxconf="/etc/zabbix/zabbix_agentd.conf"
zbxbak="/etc/zabbix/zabbix_agentd.conf.bak"
include="Include=/etc/zabbix/scripts/*conf"
file="security.conf"
filebak="security.conf.bak"
dir="/etc/zabbix/scripts/"
today=`date +"%d-%m-%y-%H:%M:%S"`
update="#script atualizado em "