#!/bin/bash
# Script de prueba
# Autor: Jose Manuel Granjo Marquez
# Fecha:04-3-2025

clear

if [ $# -ne 2 ]; then

	echo "Cantidad de parametros incorrecta"
	exit
fi

if [ -f $1.txt ]; then
	echo "El fichero existe"
	exit
fi

contador=0

while [ $contador -lt $2 ]; do

	echo "S-Realizar suma"
	echo "R-Realizar resta"
	echo "M-Realizar multiplicacion"
	echo "D-Realizar division"
	echo "X-Para salir de la calculadora"
	read -p "Introduce la letra de la operacion que deseas realizar " operacion
	contador=$(($contador +1))


case $operacion in

	s)
		read -p "Introduce el primer numero " op1
       		 read -p "Introduce el segundo numero " op2

		suma=$(($op1+$op2))

			echo "$op1+$op2=$suma"

			echo $operacion $op1 $op2 >> $1.txt
	;;
	r)
	read -p "Introduce el primer numero " op1
        read -p "Introduce el segundo numero " op2

		resta=$(($op1-$op2))

			echo "$op1-$op2=$resta"

			echo $operacion $op1 $op2 >> $1.txt
	;;
	m)
	read -p "Introduce el primer numero " op1
        read -p "Introduce el segundo numero " op2

		multiplicacion=$(($op1*$op2))

			echo "$op1*$op2=$multiplicacion"

			echo $operacion $op1 $op2 >> $1.txt
	;;
	d)
	read -p "Introduce el primer numero " op1
        read -p "Introduce el segundo numero " op2

		Division=$(($op1/$op2))

			echo "$op1/$op2=$Division"
	;;
	x)
		break
	;;
	*)
			echo "Error:No existe esa opcion"
		break
	;;
esac
done
pwd $1.txt

