var=$(netstat -tulpn | grep :80)
while [ -n "$var" ]; do
echo Please Wait
sleep 2
clear
done
