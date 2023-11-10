#!/bin/bash

# Práctica entregable 

## Parte 1: Configuración Inicial 
# Crea un directorio llamado practica_admin en tu directorio de inicio

# Nombre de directorio
nom_directorio="practica_admin"

# Ruta absoluta del directorio en /home/ana
ruta="/home/ana/$nom_directorio"

# Verifica si el directorio ya existe
if [ -d "$ruta" ]; then
    echo "El directorio \"$nombre_directorio\" ya existe en /home/ana."

	
else
    # Crea el directorio en /home
    mkdir "$ruta"
    echo "Se ha creado el directorio \"$nom_directorio\" en /home/ana."
fi
mkdir "$ruta"/"documentos"
mkdir "$ruta"/"fotos"
mkdir "$ruta"/"backups"

chmod -R 744 /home/ana/practica_admin/

## Parte 2: Trabajo con Archivos y Directorios 
 #En el directorio documentos, crea un archivo de texto llamado notas.txt y agrega algunas notas personales

echo "Parte 2 de la práctica: trabajo con archivos y directorios" >  "$ruta/documentos/notas.txt"

 #En el directorio fotos, crea un archivo vacío llamado album.txt y cambia sus permisos para que solo el propietario pueda leer y escribir en él.

touch "$ruta/fotos/album.txt"

chmod 744 "$ruta/fotos/album.txt"

 #Mueve el archivo album.txt al directorio backups cambiando el nombre para que añada la fecha y tenga extensión .bak.
  fecha=`date +%y%m%d`
 mv  "$ruta/fotos/album.txt" "$ruta/backups/$fecha.bak"

 #Copia el archivo notas.txt a backups y cambia su nombre a notas_personales.txt

cp "$ruta/documentos/notas.txt" "$ruta/backups/notas_personales.txt"

 #En el directorio backup, lista todos los archivos que tengan la extensión .bak

archivos_bak=$(find /home/ana/practica_admin/backups/ -name "*.bak")
 echo "se ha encontrado el siguiente fichero con la extensión .bak: $archivos_bak" 

## Parte 3: Búsqueda y Filtrado 
 #Busca y muestra todos los archivos en tu sistema con la extensión ".txt".

archivos_txt=$(find / -type f -name "*.txt")
echo "se ha encontrado el siguiente fichero con la extensión .txt: $archivos_txt"


 #Encuentra todos los archivos en tu sistema que contengan la palabra importante en su contenido.

palabra_a_buscar="importante"
        grep -r "$palabra_a_buscar" /home
        
## Parte 4: Eliminación y Limpieza
 #Elimina el archivo notas.txt del directorio documentos

rm -v $ruta/documentos/notas.txt

 #Borra el directorio fotos y su contenido en su totalidad

directorio_a_borrar="$ruta"/fotos
if [ -d "$directorio_a_borrar" ]; then
	rm -r -v "$directorio_a_borrar"     


else
    
    
    echo "El directorio \"$directorio_a_borrar\" no existe"
fi


 #Muestra todos los archivos y directorios en el directorio de tu home que hayan sido modificados en los últimos 30 días

find /home/ana/ -type f -mtime -30



