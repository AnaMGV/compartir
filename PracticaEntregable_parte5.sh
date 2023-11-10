#!/bin/bash

#Crea un script que reciba los datos usando parámetros y funcione de la siguiente manera:
#Recibe un nombre de usuario, un nombre de directorio y un nombre de fichero y debe:

#Crear el usuario
#Crear el directorio
#Cambiar el directorio de propietario al nuevo usuario
#Crea el fichero dentro del directorio
#Mostrar los permisos del directorio

if [ $# -ne 3 ]; then
    echo "Por favor, proporciona un nombre de usuario, nombre de directorio y nombre de fichero como parámetros."
    exit 1
fi

nombre_usuario="$1"
nombre_directorio="$2"
nombre_fichero="$3"

#Comprobar si el usuario ya existe, si no existe crearlo

if id  nombre_usuario &> /dev/null; then

        echo "El usuario nombre_usuario existe en el sistema"
	exit 1

else
        sudo adduser "$nombre_usuario"
fi

# Verifica si el directorio ya existe, si no existe se crea

ruta_directorio="/home/ana/Prueba/$nombre_directorio"

if [ -d "$ruta_directorio" ]; then
    echo "El directorio \"$nombre_directorio\" ya existe en /home."
	exit 1

else

 # Crea el directorio 

    mkdir "$ruta_directorio"
    echo "Se ha creado el directorio \"$nombre_directorio\" en /home/ana/Prueba."
fi

#Cambiar el directorio de propietario al nuevo usuario 

 #variable para almacenar el nombre del propietario del directorio


 owner=$(stat -c %U "$ruta_directorio")


#comprobar que si el propietario del directorio  es el que llega por parámetro, si no es así cambiarlo para que sea el propietario


if [ "$nombre_usuario" != "$owner" ]; then


        sudo chown -c "$nombre_usuario" "$ruta_directorio"
        
fi
 
       

#Crea el fichero dentro del directorio

touch "$ruta_directorio"/"$nombre_fichero"

#Mostrar los permisos del directorio

stat -c %U directorio_practica "$ruta_directorio"



