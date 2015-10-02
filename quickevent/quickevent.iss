; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define VERSION "0.0.5"
#define APP_NAME "QuickEvent"
#define APP_NAME_LOWER "quickevent"
#define COMPANY "datamines"

#define QT_DIR "C:\app\qt5\5.5\mingw492_32"
#define MINGW_DIR "C:\app\qt5.5\Tools\mingw492_32"
#define PSQL_DIR "C:\app\pgsql32"

#define INCLUDE_QT

;#if defined(INCLUDE_QT5) || defined(INCLUDE_QT4)
;  #define INCLUDE_QT
;#endif

#define BUILD_DIR "C:\proj\_build\quickbox-release"

[Setup]
AppName={#APP_NAME}
AppVerName={#APP_NAME} {#VERSION}
AppPublisher=Fanda Vacek
AppPublisherURL=http://www.{#APP_NAME_LOWER}.cz
AppSupportURL=http://www.{#APP_NAME_LOWER}.cz
AppUpdatesURL=http://www.{#APP_NAME_LOWER}.cz
DefaultDirName=C:\{#APP_NAME}
DefaultGroupName={#APP_NAME}
OutputDir={#BUILD_DIR}\_inno\{#APP_NAME_LOWER}
#ifdef INCLUDE_QT
OutputBaseFilename={#APP_NAME_LOWER}-{#COMPANY}-{#VERSION}-setup
#else
OutputBaseFilename={#APP_NAME_LOWER}-{#COMPANY}-{#VERSION}-noqt-setup
#endif
;SetupIconFile=.\divers\quickevent\images\{#APP_NAME_LOWER}.ico
Compression=lzma
SolidCompression=yes

[Languages]
;Name: english; MessagesFile: compiler:Default.isl
;Name: czech; MessagesFile: compiler:Czech.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked
Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked

[Files]
Source: {#BUILD_DIR}\bin\{#APP_NAME_LOWER}.exe; DestDir: {app}; Flags: ignoreversion
Source: {#BUILD_DIR}\bin\quickevent.exe; DestDir: {app}; Flags: ignoreversion
Source: {#BUILD_DIR}\bin\qsqlmon.exe; DestDir: {app}; Flags: ignoreversion
Source: {#BUILD_DIR}\bin\qfcore.dll; DestDir: {app}; Flags: ignoreversion
Source: {#BUILD_DIR}\bin\qfqmlwidgets.dll; DestDir: {app}; Flags: ignoreversion
Source: {#BUILD_DIR}\bin\quickevent.dll; DestDir: {app}; Flags: ignoreversion
Source: {#BUILD_DIR}\bin\siut.dll; DestDir: {app}; Flags: ignoreversion
;Source: .\{#APP_NAME_LOWER}global-{#COMPANY}.conf.xml; DestDir: {app}; DestName: {#APP_NAME_LOWER}global.conf.xml; Flags: ignoreversion

;Source: {#BUILD_DIR}\bin\designer\qfwidgets.dll; DestDir: {app}\designer; Flags: ignoreversion
;Source: {#BUILD_DIR}\bin\designer\qfsqlwidgets.dll; DestDir: {app}\designer; Flags: ignoreversion

Source: {#BUILD_DIR}\bin\qml\*; DestDir: {app}\qml; Flags: ignoreversion recursesubdirs createallsubdirs
Source: {#BUILD_DIR}\bin\quickevent-data\*; DestDir: {app}\quickevent-data; Flags: ignoreversion recursesubdirs createallsubdirs

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

Source: {#PSQL_DIR}\bin\libpq.dll; DestDir: {app}; Flags: ignoreversion
Source: {#PSQL_DIR}\bin\intl.dll; DestDir: {app}; Flags: ignoreversion
Source: {#PSQL_DIR}\bin\libeay32.dll; DestDir: {app}; Flags: ignoreversion
Source: {#PSQL_DIR}\bin\ssleay32.dll; DestDir: {app}; Flags: ignoreversion

;Source: c:\app\openssl\*.dll; DestDir: {app}; Flags: ignoreversion

#ifdef INCLUDE_QT
Source: {#QT_DIR}\bin\Qt5Core.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\Qt5Gui.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\Qt5Widgets.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\Qt5XmlPatterns.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\Qt5Network.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\Qt5Sql.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\Qt5Xml.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\Qt5Qml.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\Qt5Svg.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\Qt5Script.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\Qt5ScriptTools.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\Qt5PrintSupport.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\Qt5SerialPort.dll; DestDir: {app}; Flags: ignoreversion

Source: {#QT_DIR}\plugins\platforms\qwindows.dll; DestDir: {app}\platforms; Flags: ignoreversion

Source: {#QT_DIR}\plugins\printsupport\windowsprintersupport.dll; DestDir: {app}\printsupport; Flags: ignoreversion

Source: {#QT_DIR}\plugins\imageformats\qjpeg.dll; DestDir: {app}\imageformats; Flags: ignoreversion
Source: {#QT_DIR}\plugins\imageformats\qsvg.dll; DestDir: {app}\imageformats; Flags: ignoreversion

Source: {#QT_DIR}\plugins\sqldrivers\qsqlite.dll; DestDir: {app}\sqldrivers; Flags: ignoreversion
Source: {#QT_DIR}\plugins\sqldrivers\qsqlpsql.dll; DestDir: {app}\sqldrivers; Flags: ignoreversion

;Source: {#MINGW_DIR}\bin\mingwm10.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\libgcc_s_dw2-1.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\libwinpthread-1.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\libstdc++-6.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\icudt54.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\icuin54.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\icuuc54.dll; DestDir: {app}; Flags: ignoreversion

#endif

[Icons]
Name: {group}\{#APP_NAME}; Filename: {app}\{#APP_NAME_LOWER}.exe
Name: {group}\{cm:UninstallProgram,{#APP_NAME}}; Filename: {uninstallexe}
Name: {userdesktop}\{#APP_NAME}; Filename: {app}\{#APP_NAME_LOWER}.exe; Tasks: desktopicon
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\{#APP_NAME}; Filename: {app}\{#APP_NAME_LOWER}.exe; Tasks: quicklaunchicon

[Run]
Filename: {app}\{#APP_NAME_LOWER}.exe; Description: {cm:LaunchProgram,{#APP_NAME}}; Flags: nowait postinstall skipifsilent




































































