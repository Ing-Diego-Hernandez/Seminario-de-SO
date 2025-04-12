@echo off
REM 1. Crear un archivo de texto plano mytext.txt con “Hola Mundo”
echo Hola Mundo > mytext.txt

REM 2. Imprimir en la terminal el contenido de mytext.txt
echo.
echo Contenido de mytext.txt:
type mytext.txt

REM 3. Crear un subdirectorio llamado backup
echo.
echo Creando carpeta backup...
mkdir backup

REM 4. Copiar mytext.txt al subdirectorio backup
echo.
echo Copiando mytext.txt a backup...
copy mytext.txt backup\

REM 5. Listar el contenido del subdirectorio backup
echo.
echo Contenido de backup:
dir backup

REM 6. Eliminar el archivo mytext.txt del subdirectorio backup
echo.
echo Eliminando mytext.txt de backup...
del backup\mytext.txt

REM 7. Eliminar el subdirectorio backup
echo.
echo Eliminando carpeta backup...
rmdir backup

REM 8. Mostrar que ya no existe backup
echo.
echo Contenido final del directorio actual:
dir
