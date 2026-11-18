@Echo OFF
@REM call D:\AFCloudSpeaker\Transmit\sdk\Build_MainAppDebug.bat
call Build_MainAppDebug.bat
move Build\MainApp\debug\out\MainApp_debug.sign.img  tools\fastboot\Release\MainApp_Speaker.sign.img