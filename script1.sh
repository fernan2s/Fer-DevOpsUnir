#!/bin/bash


# Comprobación de existencia de argumento de entrada
if [ -z "$1" ];
then
  echo "No hay argumentos de entrada"
  exit 1

# Se comprueba si es un fichero regular
elif [ -f $1 ];
then
	echo $1 " -> fichero regular"
# Se comprueba si es un fichero regular

elif [ -d $1 ];
then
        echo $1 " -> directorio"

# Se comprueba si es otro tipo de fichero
elif [ -e $1 ];
then
        echo $1 " -> es otro tipo de fichero"
# Si no coincide con ninguno de los tipos evaluados se indica
else
	echo $1 " -> no es ningún tipo de fichero reconocido"
fi
