@echo Off
set target=%1
if "%target%" == "" (
set target=Build
)
set config=%2
if "%config%" == "" (
set config=Release
)
%WINDIR%\Microsoft.NET\Framework\v4.0.30319\msbuild src\SoundFingerprinting\SoundFingerprinting.csproj /t:"%target%" /p:Configuration="%config%" /m /fl /flp:LogFile=msbuild.log;Verbosity=Normal /nr:false
