#!/bin/bash

#Apartado1

# Solicitar al usuario que inserte el número de directorios que quiere crear

if [ "$#" = 0 ]; then
    echo "Uso incorrecto, proporcione un número de direcctorio distinto a 0 : "
    exit 1

fi

NUMERO="$1"
NOM_DIRECTORIO="$2"
NOM_FICHERO="$3"

if [ NUMERO >0 ]; then

#Bucle que crea dinámicamente tantos archivos como indique el parámetro

for ((i=1; i<="$NUMERO"; i++));do
	mkdir   ~/Prueba/PracticaUbuntu/"$2$i";touch ~/Prueba/PracticaUbuntu/"$2$i"/"$3$i.txt";ls -l ~/Prueba/PracticaUbuntu/"$2$i"/"$3$i.txt" >> ~/Prueba/PracticaUbuntu/"$2$i"/"$3$i.txt"  
       
done


fi


echo "Se ha ejecutado correctamente"
#Se está generando el  fichero 0, hay que reviarlo

#Apartado2



