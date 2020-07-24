zbxconf="/etc/zabbix/zabbix_agent.conf"
zbxbak="/etc/zabbix/zabbix_agent.conf.bak"
include="Include=/etc/zabbix/scripts/*conf"
file="security.conf"
filebak="security.conf.bak"
dir="/etc/zabbix/scripts"
today=`date +"%d-%m-%y-%H:%M:%S"`

if [[ -d "$dir" ]]; then
        mkdir -p "$dir"
        cp $file $dir
        cp $zbxconf $zbxbak
        echo $include >> $zbxconf

        /etc/init.d/zabbix-agent restart
else
        mv "$dir"/"$file" "$dir"/"$filebak-$today"
        cp $file $dir
        /etc/init.d/zabbix-agent restart
fi
