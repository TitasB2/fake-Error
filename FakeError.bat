@echo off

for /f %%a in ('echo prompt $E^| cmd') do set "esc=%%a"

title Loading...

echo =================
echo   Please Wait...
echo =================

timeout /t 3 >nul

title Error

echo =================
echo       %esc%[31mERROR%esc%[0m
echo =================

timeout /t 5
goto :end

:end
exit