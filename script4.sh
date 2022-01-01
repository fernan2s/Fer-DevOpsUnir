#!/bin/bash

## Este script requiere de dos argumentos
## Si son dos ficheros se escribe uno sobre otro

## Filtra el número de argumentos
if [[ "$#" -ne 2 ]]; then
  echo "Este script requiere son 2 argumentos"
  exit 1
## Verifica que sean ficheros regulares
fi
if [[ ! -e $1 ]];
then
  echo "No existe el fichero 1"
  exit 1
elif [[ ! -e $2 ]];
then
  echo "No existe el fichero 2"
  exit 1
fi

## En caso de que existen escrie el fichero uno sobre el dos

echo "Escribiendo fichero $1 sobre $2"
cp $1 $2


