# 创建桌面快捷方式
$WshShell = New-Object -comObject WScript.Shell
$DesktopPath = [Environment]::GetFolderPath("Desktop")
$ShortcutPath = Join-Path $DesktopPath "启动桌面宠物.lnk"
$ProjectPath = Split-Path -Parent $MyInvocation.MyCommand.Path
$BatchPath = Join-Path $ProjectPath "启动桌宠.bat"

$Shortcut = $WshShell.CreateShortcut($ShortcutPath)
$Shortcut.TargetPath = $BatchPath
$Shortcut.WorkingDirectory = $ProjectPath
$Shortcut.Description = "桌面宠物 - DeskBuddy"
$Shortcut.Save()

Write-Host "✅ 桌面快捷方式已创建！"
Write-Host "📌 快捷方式位置：$ShortcutPath"
Write-Host ""
Write-Host "🎉 现在你可以在桌面双击图标启动桌面宠物了！"
