[Setup]
AppName=PyConda
AppVersion=1.0.0
DefaultDirName={pf}\PyConda
OutputDir=Output
OutputBaseFilename=PyConda
Compression=lzma
SolidCompression=yes
AppPublisher=Pabitra Banerjee
AppSupportURL=https://pabitrabanerjee.me
AppUpdatesURL=https:pyconda.explorecode.live
AppCopyright=MIT License , 2023 , Pabitra Banerjee
SetupIconFile=PyConda.ico

[Files]
Source: "shell.py"; DestDir: "{app}"
Source: "PyConda.py"; DestDir: "{app}"
Source: "strings_with_arrows.py"; DestDir: "{app}"
Source: "grammer.txt"; DestDir: "{app}"

[Icons]
Name: "{group}\PyConda"; Filename: "{app}\PyConda.exe"

[Registry]
Root: HKCR; Subkey: ".pc"; ValueType: string; ValueName: ""; ValueData: "PyCondaFile"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "PyCondaFile"; ValueType: string; ValueName: ""; ValueData: "PyConda File"; Flags: uninsdeletekey
Root: HKCR; Subkey: "PyCondaFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\shell.py"" ""%1"""

[UninstallRun]
Filename: {uninstallexe}; Parameters: "/DELREG=HKCR\.pc /DELREG=HKCR\PyCondaFile"