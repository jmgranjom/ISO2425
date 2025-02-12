#!/bin/bash
# Script de prueba
# Autor:Jose Manuel Granjo Marquez
# Fecha:11-02-2025
clear

mes=$(date +%B)
dia=$(date +%a)
ano=$(date +%Y)
hora=$(date +%H:%M)
echo "================================================================================"
echo "Informe de usuarios el dia $dia-$mes-$ano a las $hora"
IFS=:
contador=0
while read us x uid gid d h shell; do
	if [ $# -eq 0 ]; then
		num=1000
		if [ $uid -gt 1000 ]; then
			echo "$us - $uid"
		contador=$(($contador+1))
		fi
	else
		num=$1
	if [ $uid -gt $num ]; then
	
		echo "$us - $uid"
		echo "$us - $uid" >> $1.txt
	contador=$(($contador+1))
	fi
fi
done < /etc/passwd

echo "$date El usuario auditor1 ha solicitado un informe de usuario" >> /tmp/logeventos
echo " Total: $contador usuarios"
echo "================================================================================"
