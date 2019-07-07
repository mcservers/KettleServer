# cd /home/<your kettle dir>
rm eula.txt
echo eula=true>eula.txt
screen -dmS kettle java -Xms 512M -Xmx2G -server -jar kettle.jar
