zbxconf="/etc/zabbix/zabbix_agentd.conf"
zbxbak="/etc/zabbix/zabbix_agentd.conf.bak"
include="Include=/etc/zabbix/scripts/*conf"
file="security.conf"
filebak="security.conf.bak"
dir="/etc/zabbix/scripts/"
today=`date +"%d-%m-%y-%H:%M:%S"`
update="#script atualizado em "
server1="Server=100.24.155.31"
server2="ServerActive=100.24.155.31"

if [ ! -e "$dir" ]; then
        mkdir -p "$dir"
        cp $file $dir
        cp "$zbxconf" "$zbxbak-$today"
        echo $include >> $zbxconf
        echo $update $today >> $zbxconf
        
    
        /etc/init.d/zabbix-agent restart
else
        mv "$dir"/"$file" "$dir"/"$filebak-$today"
        cp $file $dir 
        echo $update $today >> $zbxconf
        /etc/init.d/zabbix-agent restart
fi