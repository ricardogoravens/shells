#!/bin/bash

zbxconf="/etc/zabbix/zabbix_agentd.conf"
zbxbak="/etc/zabbix/zabbix_agentd.conf.bak"
zbxtemp="/etc/zabbix/zabbix_agentd.conf.temp"
include="Include=/etc/zabbix/scripts/*conf"
file="security.conf"
filebak="security.conf.bak"
dir="/etc/zabbix/scripts/"
today=`date +"%d-%m-%y-%H:%M:%S"`
update="#script atualizado em "
