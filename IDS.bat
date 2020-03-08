@echo off

netsh wlan disconnect
powercfg -s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
echo msgbox "Power mode set to performance and Wi-Fi disconnected." > "%temp%\popup.vbs"
wscript.exe "%temp%\popup.vbs
PATH "%PROGRAMFILES%\VMware\VMware Workstation\"

rem Set your VM location .vmx file on the next line.

START vmware.exe -x "%HOMEPATH%\Documents\Virtual Machines\IDS\IDS.vmx"
%windir%\system32\control.exe /name Microsoft.PowerOptions