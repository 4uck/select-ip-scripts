@echo off
SetLocal EnableDelayedExpansion

chcp 1251

runas /savecred /user:Администратор "c:\scripts\selectIP.bat"