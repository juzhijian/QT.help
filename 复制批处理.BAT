@echo off&setlocal enabledelayedexpansion
set n=0
set "cddb=%cd%"

for /f "delims=" %%a in ('dir *./b') do (
if /i not "%%a"=="22.txt" (
set /a n+=1
set "wj!n!=%%a"
)
)

for /f "tokens=1* delims==" %%a in ('set wj') do (
copy %cddb%\A_make.bat %cddb%\%%b 
echo 完成:复制到%%b文件夹下
)
echo 共复制%n%个文件
pause