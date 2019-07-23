@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco install git jre8 wget

echo true > initialized

echo git-HEAD-2579c45-universal > version.txt

echo IF EXIST "initialized" del init.bat > update.bat
echo >> update.bat
echo git pull >> update.bat
echo del init.bat >> update.bat

echo @ECHO OFF > startKettle.bat
echo java -Xms128M -Dfile.encoding=CP866 -XX:+AggressiveOpts -verbose:gc -Xloggc:gc.log -d64 -jar kettle.jar >> startKettle.bat
echo @pause >> startKettle.bat