#!/bin/bash 
# Script de prueba
# Autor: Jose Manuel Granjo Marquez
# Fecha: 05-2-2025

clear

if [ $# -ne 2 ]; then

	echo "Numero de parametros incorrecta"
	exit
fi

if [ -f $1 ]; then

	echo "El fichero existe"
	exit
fi

if [ ! -d $2 ]; then

	echo "El directorio no existe"
	exit
fi
tamano=$(ls $2 | wc -l)
if [ $tamano -eq 0 ]; then

	echo "El fichero esta vacio"
	exit 
fi

echo "José Manuel Granjo Márquez"

for i in $2/*.txt; do
	contar=$(cat $i | wc -l)
	if [ $contar -ge 5 ]; then
		
		echo "$i" 
		echo $i >> $1
	contar=$(wc -w $i | cut -d " " -f 1)
	echo "El fichero original tiene $contar palabras" >> $i.q
	cat $i >> $i.q
	fi
done

num=$(cat $1 | wc -l)
echo "Se han identificado $num ficheros"
