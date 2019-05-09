@echo off 
echo @echo off > "Ten komputer.bat"
echo explorer = >> "Ten komputer.bat"
echo msg * Hello darkness my old friend >> "Ten komputer.bat"

echo set WshShell = WScript.CreateObject("WScript.Shell" ) > mkshortcut.vbs
echo set oShellLink = WshShell.CreateShortcut(Wscript.Arguments.Named("shortcut") ^& ".lnk") >> mkshortcut.vbs
echo oShellLink.TargetPath = Wscript.Arguments.Named("target") >> mkshortcut.vbs
echo oShellLink.IconLocation = "%SystemRoot%\System32\SHELL32.dll, 15" >> mkshortcut.vbs
echo oShellLink.WindowStyle = 7 >> mkshortcut.vbs
echo oShellLink.Save >> mkshortcut.vbs

set myvar=%cd%
.\mkshortcut.vbs /target:"%myvar%/Ten komputer.bat" /shortcut:"%USERPROFILE%/Desktop/Ten komputer"
