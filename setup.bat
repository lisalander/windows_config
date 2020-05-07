@echo off

:: Add Sublime Text Icon to context menu
reg add "HKCR\*\shell\Open with Sublime Text" /v Icon /t REG_SZ /d "C:\Program Files\Sublime Text 3\sublime_text.exe"


:: Enable microphone access
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone /v Value /t REG_SZ /d Allow /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged /v Value /t REG_SZ /d Allow /f



:: Disable microphone access
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone /v Value /t REG_SZ /d Deny /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged /v Value /t REG_SZ /d Deny /f
