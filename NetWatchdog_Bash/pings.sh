#!/bin/bash

ips="./ip_list.txt"
logs="./pings.logs"

if [ ! -f "$ips" ]; then
	echo "El archivo $ips no existe."
	exit 1
fi

while IFS= read -r ip || [ -n "$ip" ]; do

	[ -z "$ip" ] && continue
	
	echo "Haciendo ping a la IP $ip"
	
	fecha_hora=$(date +"%d/%m/%Y | %H:%M:%S")

	if ping -c 4 "$ip" > /dev/null 2>&1; then
		echo "El ping a la ip $ip fue exitodo. $fecha_hora" >> "$logs"
	else
		echo "El ping a la ip $ip falló. $fecha_hora" >> "$logs"
	fi
done < "$ips"

echo "Proceso completado. Los resultados fueron guardados en el archivo $logs"
