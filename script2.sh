#!/bin/bash

# Este script lee un argumento de entrada: nombre fichero
# El objetivo es ver si es una imagen jpg, y consecuentemente se copia a ~/fotos
# Si no es una imagen jpg se indica
# Se controla el error de que no haya argumento de entrada y tambień se indica si el fichero no existe


# Comprobación de existencia de argumento de entrada
if [ -z "$1" ];
then
  echo "No hay argumentos de entrada"
  exit 1
fi

# Se obtiene la extensión del fichero
extension="${1##*.}"

# Se comprueba que el fichero exista
if [[ ! -f $1 ]];
then
  echo "El fichero indicado no existe"

# Si existe y es una imagen
elif [[ $extension == "jpg"  ]];
then

  # Se copia a ~/fotos. Si no existe se crea
  if [[ ! -d ~/fotos/ ]];
  then
    echo "No existe ~/fotos/. Creando..."
    mkdir ~/fotos/
  fi

  cp $1 ~/fotos/
  echo "Copiando $1 a carpeta ~/fotos/"

# Si el fichero existe y no es jpg se indica
elif [[ -f $1 && $extension != "jpg"  ]];
 then
   echo "El fichero no es una imagen jpg"
fi

