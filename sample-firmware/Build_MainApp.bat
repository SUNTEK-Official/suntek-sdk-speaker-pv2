@Echo Off

copy /y .\Devices\MainApp\MainApp_NoVolte.ld .\Devices\MainApp\MainApp.ld
set DEVICE=MainApp
set BUILD_OPERATOR=SUNTEK_BUILD
set TARGET_BUILD_TYPE=release

call Build.bat
