@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco install git jre8 wget unzip maven gradle

echo true > initialized

wget https://github.com/KettleFoundation/Kettle/releases/download/vgit-HEAD-2579c45/kettle-git-HEAD-2579c45-universal.jar -O kettle.jar

echo git-HEAD-2579c45-universal > version.txt

echo choco uninstall git jre8 wget unzip maven gradle > uninstall.bat
echo echo choco install git jre8 wget unzip maven gradle ^> reinstall.bat >> uninstall.bat

echo IF EXIST "initialized" del init.bat > update.bat
echo. >> update.bat
echo git pull >> update.bat
echo choco update git jre8 wget unzip maven gradle >> update.bat
echo del init.bat >> update.bat
echo del version.txt >> update.bat
echo del kettle.jar >> update.bat
echo wget https://github.com/KettleFoundation/Kettle/releases/download/vgit-HEAD-2579c45/kettle-git-HEAD-2579c45-universal.jar -O kettle.jar >> update.bat
echo echo git-HEAD-2579c45-universal ^> version.txt >> update.bat

echo @ECHO OFF > startKettle.bat
echo java -Xms256M -Dfile.encoding=CP866 -XX:+AggressiveOpts -verbose:gc -Xloggc:gc.log -d64 -jar kettle.jar >> startKettle.bat
echo @pause >> startKettle.bat
