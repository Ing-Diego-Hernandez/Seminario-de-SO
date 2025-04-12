@echo off
REM 1. Imprimir en pantalla “Hello World”
echo Hello World

REM 2. Listar el contenido del directorio actual
echo.
echo Contenido del directorio actual:
dir

REM 3. Crear un subdirectorio llamado Test
echo.
echo Creando carpeta Test...
mkdir Test

REM 4. Cambiarse al subdirectorio Test
echo.
echo Cambiando al subdirectorio Test...
cd Test

REM 5. Listar el contenido del subdirectorio Test
echo.
echo Contenido del subdirectorio Test:
dir