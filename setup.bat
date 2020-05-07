@echo off

reg add "HKCR\*\shell\Open with Sublime Text" /v Icon /t REG_SZ /d "C:\Program Files\Sublime Text 3\sublime_text.exe"
