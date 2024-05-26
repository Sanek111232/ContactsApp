; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Contacts app"
#define MyAppVersion "1.0"
#define MyAppExeName "ContactsAppUI.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{0F849500-B936-4779-942C-DF323521573B}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputBaseFilename=Contact App setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\SystemX\source\repos\Menshikov\ContactsApp\InstallScripts\Release\ContactsAppUI.exe"; DestDir: "{app}"; Flags: ignoreversion
  Source: "C:\Users\SystemX\source\repos\Menshikov\ContactsApp\InstallScripts\Release\Save.json"; DestDir: "{app}"; Flags: ignoreversion
  Source: "C:\Users\SystemX\source\repos\Menshikov\ContactsApp\InstallScripts\Release\ContactsApp.dll"; DestDir: "{app}"; Flags: ignoreversion
  Source: "C:\Users\SystemX\source\repos\Menshikov\ContactsApp\InstallScripts\Release\Newtonsoft.Json.dll"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

