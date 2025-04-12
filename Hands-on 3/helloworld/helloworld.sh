#!/usr/bin/env bash
# helloworld.sh

# 1. Imprimir en pantalla “Hello World”
echo "Hello World"

# 2. Listar el contenido del directorio actual
echo
echo "Contenido del directorio actual:"
ls -la

# 3. Crear un directorio llamado Test
echo
echo "Creando directorio Test..."
mkdir -p Test

# 4. Cambiarse al directorio Test
echo
echo "Cambiando al directorio Test..."
cd Test || { echo "No se pudo cambiar al directorio Test"; exit 1; }

# 5. Listar el contenido del directorio Test
echo
echo "Contenido del directorio Test:"
ls -la

# Volver al directorio padre
echo
echo "Regresando al directorio padre..."
cd ..
