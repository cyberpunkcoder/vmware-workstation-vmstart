# VMWareWorkstationVMStart
Just a quick batch file for Windows 10 to set Windows Power Mode to high performance, and start a VM.
Power mode is set to performance to stop USB sleep in I/O dependent applications.
Windows power mode switch window is opened so that power mode can be switched to desired mode after completion.

Source commands in .bat file:

@echo off

powercfg -s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
echo msgbox "Power mode set to performance to prevent USB sleep." > "%temp%\popup.vbs"
wscript.exe "%temp%\popup.vbs
PATH "%PROGRAMFILES%\VMware\VMware Workstation\"

rem Set your VM location .vmx file on the next line.

START vmware.exe -x "%HOMEPATH%\Documents\Virtual Machines\IDS\IDS.vmx"
%windir%\system32\control.exe /name Microsoft.PowerOptions

IMPORTANT
"%HOMEPATH%\Documents\Virtual Machines\IDS\IDS.vmx" MUST BE CHANGED TO YOUR VM LOCATION
YOU MAY HAVE TO CHANGE "%PROGRAMFILES%\VMware\VMware Workstation\" TO VMWARE WORKSTATION LOCATION

Thank you, hope this bath file helps!
