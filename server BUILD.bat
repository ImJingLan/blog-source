@echo off
title HUGO 静态部署中......
rd public /s /q
cls
echo 已删除原Public文件夹
hugo

pause