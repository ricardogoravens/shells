#!/bin/bash
source env.sh

if [ ! -e "$dir" ]; then
        echo "Não existe a pasta Script...criando"
        sleep 3
        mkdir -p "$dir"
        cp $file $dir
       if  [ -f "$dir"/"$file" ]; then
                cp "$zbxconf" "$zbxbak-$today"
                echo $include >> $zbxconf
                echo $update $today >> $zbxconf
                /etc/init.d/zabbix-agent restart
                exit 0
        fi
        exit 1

else
        # mv "$dir"/"$file" "$dir"/"$filebak-$today"
        # cp $file $dir
        # echo $update $today >> $zbxconf
        # /etc/init.d/zabbix-agent restart
        echo "Já existe a pasta Script, atualizando o arquivo secury.conf"
        sleep 3
        rm -f "$dir"/"$file"
        cp "$file" "$dir"
        if [ -f "$dir"/"$file" ]; then
                echo $update $today >> $zbxconf
                /etc/init.d/zabbix-agent restart
                exit 0
        fi
        exit 1
fi