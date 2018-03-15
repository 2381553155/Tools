1、
@echo off
start explorer d:\
echo 111>test.txt
echo 223>>test.txt
type test.txt|find "23"
pause
del test.txt
pause


2、
@echo off
for /r d:\ %%i in (*.png) do ( 
  echo %%i
)
pause


3、
@echo off
for /L %%i in (1,1,5) do ( echo %%i)
pause


4、
@echo off
set a=sub string
set subStr=%a:~4%
echo %subStr%
set place=%a:sub=This%
echo  %place%
pause


5、
@echo off
echo %1
echo %2
echo %3 
pause

6、
@echo off
set /p var=Input value :
echo %var%
pause












