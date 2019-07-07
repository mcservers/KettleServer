@ECHO OFF
 java -Xms128M -Dfile.encoding=CP866 -XX:+AggressiveOpts -verbose:gc -Xloggc:gc.log -d64 -jar kettle.jar
@pause
