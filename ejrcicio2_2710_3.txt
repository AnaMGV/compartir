


#!/bin/bash

       

# Solicitar una ruta y un nombre de directorio y crear el directorio en la ruta
if [ "$#" -ne 2 ]; then

    echo "proporcione una ruta y nombre de directorio : "
exit 1

fi
    
if [ -d $1 ] && [ ! -d $2 ]; then

mkdir   "$1"/"$2"
echo " Directorio $2 creado en  $1"

else 

echo "la ruta no es válida o la carpeta ya existe"


fi





