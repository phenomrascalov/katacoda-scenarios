var=$(netstat -tulpn | grep :80)
while [ "$var" != "true" ]; do
sleep 2
clear
if test -z "$var" 
then
      echo "Please Wait"
else
      break
fi
done
