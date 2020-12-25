var=$(netstat -tulpn | grep :80)
while [ -z "$var" ]; do
echo Please Wait
sleep 2
clear
done
