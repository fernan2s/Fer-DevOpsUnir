#!/bin/bash

#  Recorre los archivos del directorio actual y si son jpg le anexa la fecha (año, mes y día al comienzo)
for f in *.jpg; do
    fecha=$(date +"%Y%m%d")
    fichero="$fecha$f"
    mv $f $fichero
done

