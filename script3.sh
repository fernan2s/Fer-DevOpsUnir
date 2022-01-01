#!/bin/bash
## Filtra el número de argumentos y los imprime (los dos primeros en una línea y los demás en líneas diferentes)

## Imprime el nombre de script ($0) y el número de argumentos $#
  echo "Nombre del script: $0"

  echo "Número de argumentos: $#"

# Se recorren los argumentos y se van contabilizando por medio de un contador (i)

  i=0

  for arg in "$@"; do 

    let i=i+1

# Para los argumentos 1 y 2 se imprimen en la misma línea
    if [[ $i -lt 3 ]]; then
      printf "$arg "
# A partir del tercero se imprimen en líneas diferentes
    elif [[ $i -gt 2 ]]; then
      printf "\n$arg"		
    fi
  done	
 
