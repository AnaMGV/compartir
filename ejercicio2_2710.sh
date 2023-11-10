#!/bin/bash

RUTA=/home/ana/compartir
DIRECTORIO=directorio1

# Solicitar una ruta y un nombre de directorio y crear el directorio en la ruta
if [ "$RUTA" -eq "" ]; then
    echo "Uso incorrecto, proporcione una ruta : "
    
else

mkdir   "$RUTA"/"$DIRECTORIO"


fi



echo "Se ha ejecutado correctamente"
O
X
