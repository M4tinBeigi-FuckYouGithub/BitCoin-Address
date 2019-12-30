@echo off

title     Get custom bitcoin address  author : Matin Beigi

echo.

set/p "custom=  Please enter the address first : " 
set/p "num=  Please enter the number : " 


echo.

set sem=0

:Loop1
vanitygen64.exe -i 1"%custom%"  >>address.txt


set /a cloner=1

set /a cloner=sem+cloner

set /a sem=sem+1

echo %cloner%

if "%cloner%"=="%num%" goto end


goto Loop1


:end

echo.

echo prees any key to exit.

pause>nul

exit

