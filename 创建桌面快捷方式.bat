@echo off
chcp 65001 >nul
set SCRIPT="%USERPROFILE%\Desktop\启动桌面宠物.lnk"
set TARGET="%~dp0启动桌宠.bat"

echo 正在创建桌面快捷方式...
powershell -Command "$WshShell = New-Object -ComObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut($env:SCRIPT); $Shortcut.TargetPath = $env:TARGET; $Shortcut.WorkingDirectory = '%~dp0'; $Shortcut.Description = '桌面宠物 - DeskBuddy'; $Shortcut.Save()"

echo.
echo ==========================================
echo   ✅ 桌面快捷方式已创建！
echo   📍 位置：桌面
echo ==========================================
echo.
pause
