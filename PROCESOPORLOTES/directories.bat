@echo off
Rem Script de prueba
Rem Autor: Jose Manuel 
Rem Fecha:20-11-2024

echo Presiona 1 para crear fichero
echo Presiona 2 para mostrar el arbol de directoriosde la carpeta usuario
echo Preisona 3 para mostrar achivos con extension txt
echo Presiona 4 para crear los directorios alfredoff,marinapg y ramonam en tu directorio actual
echo presiona 5 para copiar el contenido de tu carpeta de usuario al escritorio.

set /p car=

if %car%== 1 goto fichero
if %car%== 2 goto arbol_directorios
if %car%== 3 goto archivo_txt
if %car%== 4 goto directorios
if %car%== 5 goto copiar

:fichero
set /p nombre= "Introduzca el nombre para el fichero "
echo >> %nombre%.txt
pause 
exit
:arbol_directorios
tree %USERPROFILE%
pause
exit
:archivo_txt
DIR *.txt 
pause 
exit
:directorios
mkdir alfredofff
mkdir marinapg
mkdir ramonam
pause
exit
:copiar
xcopy %USERPROFILE% c:\copia /E
pause 
exit

