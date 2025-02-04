#!/bin/bash
# Script de prueba
# Autor: Jose Manuel Granjo Marquez
# Fecha: 3-2-2025

clear

while true; do
 
	echo "a-Añadir una entrada"
	echo "b-Buscar por dni"
	echo "c-Ver la agenda completa"
	echo "d-Eliminar todas las entradas de la agenda"
	echo "e-Finalizar"
	read -p " Introduce el numero al que quieres acceder " num

case $num in
	
	a)
	read -p "Introduce el Dni " dni
		if  grep "^$dni:" Agenda.txt; then

			echo "El usuario ya esta dado de alta"	
		else
	  		read -p "Dime el nombre " nom
			read -p "Dime los apellidos " apell
			read -p "Dime la localidad " locali
				echo  $dni:$nom:$apell:$locali >> Agenda.txt
		fi
	;;

	b)

	read -p "Introduce el dni " dni
			buscar=$(grep "^$dni" Agenda.txt)
			if [ -n "$buscar" ]; then
				nombre=$(echo "$buscar" | cut -d ":" -f 2)
				Apellidos=$(echo "$buscar" | cut -d ":" -f 3)
				Localidad=$(echo "$buscar" | cut -d ":" -f 4)

					echo "La persona con DNI numero $dni es: $nombre $Apellidos, y vive en $Localidad"
			else
					echo "DNI no registrado"
			fi
	;;

	c)
		if [ -s Agenda.txt ]; then
			cat  Agenda.txt
		else
			echo "Agenda Vacia"
		fi
	;;

	d)
	 	echo /dev/null > notas.txt

	;;
	e)

		echo "Terminado"
		break
	;;
	esac
done

