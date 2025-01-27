#!/bin/bash

CARPETA="/home/jesus/IRC9.1_Galindo_Arriaga_Jesus_Emmanuel"
ARCHIVO="$CARPETA/archivo.txt"


if [ ! -d "$CARPETA" ]; then
    echo "La carpeta no existe. Creando la carpeta..."
    mkdir -p "$CARPETA"  # Crear la carpeta si no existe
else
    echo "La carpeta ya existe."
fi


if [ ! -f "$ARCHIVO" ]; then
    echo "Creando el archivo $ARCHIVO..."
    echo "Este es el contenido del archivo." > "$ARCHIVO"
else
    echo "El archivo ya existe. Creando un backup..."
 
    FECHA=$(date +'%Y-%m-%d')

    cp "$ARCHIVO" "$CARPETA/archivo_$FECHA.txt"
    echo "Backup creado como archivo_$FECHA.txt."
