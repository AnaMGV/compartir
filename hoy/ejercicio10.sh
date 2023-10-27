#!/bin/bash

# Usuario y contraseña correctos (definidos en variables)
usuario_correcto="usuario"
contrasena_correcta="contrasena"

# Verifica si se proporcionan dos parámetros (usuario y contraseña)
if [ $# -ne 2 ]; then
    echo "Por favor,  proporciona un nombre de usuario y una contraseña como parámetros."
    exit 1
fi

# Obtiene el nombre de usuario y la contraseña proporcionados como parámetros
usuario_ingresado="$1"
contrasena_ingresada="$2"

# Compara el nombre de usuario y la contraseña con los valores correctos
if [ "$usuario_ingresado" = "$usuario_correcto" ] && [ "$contrasena_ingresada" = "$contrasena_correcta" ]; then
    echo "Acceso concedido. Bienvenido, $usuario_correcto."
else
    echo "Acceso denegado. Usuario o contraseña incorrectos."
fi
