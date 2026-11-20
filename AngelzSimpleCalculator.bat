@echo off
title Simple Calculator
color 0A

:menu
cls
echo ==================================
echo      ANGELZ SIMPLE CALCULATOR
echo ==================================
echo.
echo 1. Addition
echo 2. Subtraction
echo 3. Multiplication
echo 4. Division
echo 5. Exit
echo.
set /p choice=Choose an option: 

if "%choice%"=="1" goto add
if "%choice%"=="2" goto subtract
if "%choice%"=="3" goto multiply
if "%choice%"=="4" goto divide
if "%choice%"=="5" exit

echo.
echo Invalid option!
pause
goto menu

:add
cls
echo Addition
echo.
set /p num1=Enter first number: 
set /p num2=Enter second number: 
set /a answer=num1+num2
echo.
echo Answer: %answer%
pause
goto menu

:subtract
cls
echo Subtraction
echo.
set /p num1=Enter first number: 
set /p num2=Enter second number: 
set /a answer=num1-num2
echo.
echo Answer: %answer%
pause
goto menu

:multiply
cls
echo Multiplication
echo.
set /p num1=Enter first number: 
set /p num2=Enter second number: 
set /a answer=num1*num2
echo.
echo Answer: %answer%
pause
goto menu

:divide
cls
echo Division
echo.
set /p num1=Enter first number: 
set /p num2=Enter second number: 

if "%num2%"=="0" (
    echo.
    echo Cannot divide by zero!
    pause
    goto menu
)

set /a answer=num1/num2
echo.
echo Answer: %answer%
pause
goto menu