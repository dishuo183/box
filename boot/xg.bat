@echo off & setlocal enabledelayedexpansion
set "bb=busybox.exe"
for /f %%a in ('!bb! ls !cd! ^|!bb! grep "A"') do (
!bb! sed -i "s/DS_//g" !cd!\%%a
!bb! sed -i "s/_%%a//g" !cd!\%%a
!bb! sed -i "s/.7z /=/g" !cd!\%%a )
pause & exit