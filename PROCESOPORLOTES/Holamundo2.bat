@echo off
Rem Script de prueba
Rem Autor: Jose Manuel
Rem Fecha: 12-11-2024

set /p num1="Introduzca un numero"
set /p num2="Introduzca un segundo numero"

set /a suma=%num1%+ %num2%
set /a resta=%num1%-%num2%
set /a multiplicacion=%num1%*%num2%
set /a division=%num1%/%num2%

echo %num1%+ %num2% es %suma%
echo %num1%- %num2% es %resta%
echo %num1%*%num2% es %multiplicacion%
echo %num1%/%num2% es %division%


