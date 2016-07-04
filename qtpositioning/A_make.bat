@echo off
set "b=%cd%"
set "cd_=%cd%"
cd..
set "bd=%cd%"
:loop
set "cd_=%cd_:*\=%"
set "cd_tmp=%cd_:\=%"
if not "%cd_tmp%"=="%cd_%" goto loop

if "%cd_%"=="qtdatavisualization" (
qhelpgenerator %b%\qtdatavis3d.qhp -o %bd%\A_qch\qtdatavis3d.qch 
echo qtdatavis3d.qch生成完毕
) else (

qhelpgenerator %b%\%cd_%.qhp -o %bd%\A_qch\%cd_%.qch
echo %cd_%.qch生成完毕
)
pause