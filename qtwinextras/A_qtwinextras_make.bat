@echo off
set "b=%cd%"
set "cd_=%cd%"
cd..
set "bd=%cd%"
:loop
set "cd_=%cd_:*\=%"
set "cd_tmp=%cd_:\=%"
if not "%cd_tmp%"=="%cd_%" goto loop
qhelpgenerator %b%\%cd_%.qhp -o %bd%\%cd_%.qch
echo %cd_%.qch…˙≥…ÕÍ±œ
pause