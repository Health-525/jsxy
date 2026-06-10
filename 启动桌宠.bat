@echo off
chcp 65001 >nul
title DeskBuddy - 桌面宠物
echo.
echo ========================================
echo          🐾 桌面宠物启动中...
echo ========================================
echo.
cd /d "%~dp0"
if not exist "node_modules" (
    echo 首次运行，正在安装依赖...
    call npm install
)
echo.
echo 正在启动桌面宠物...
call npm start
if errorlevel 1 (
    echo.
    echo 启动失败！请检查是否已正确安装 Node.js 和依赖
    pause
)
