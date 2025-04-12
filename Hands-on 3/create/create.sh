#!/usr/bin/env bash
# create.sh

# 1. Crear un archivo de texto plano llamado mytext con la cadena “Hola Mundo”
echo "Hola Mundo" > mytext

# 2. Desplegar/Imprimir en la terminal el contenido del archivo mytext
echo
echo "Contenido de mytext:"
cat mytext

# 3. Crear un directorio llamado backup
echo
echo "Creando directorio backup..."
mkdir -p backup

# 4. Mover el archivo mytext al directorio backup
echo
echo "Moviendo mytext a backup..."
mv mytext backup/

# 5. Listar el contenido del directorio backup
echo
echo "Contenido de backup:"
ls -la backup

# 6. Eliminar el archivo mytext del directorio backup
echo
echo "Eliminando mytext de backup..."
rm backup/mytext

# 7. Eliminar el directorio backup
echo
echo "Eliminando directorio backup..."
rmdir backup

# 8. Mostrar contenido final del directorio actual
echo
echo "Contenido final del directorio actual:"
ls -la
