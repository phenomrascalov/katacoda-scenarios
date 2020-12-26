c=0
while [  $c -lt 50 ]; do
var=$(curl -Is http://localhost | head -1)
if test -z $var
then
      echo "Please Wait"
	  let c=c+1 
      sleep 2
      clear
else
      clear
      echo "Ready"
      break
fi
echo "Timeout !!!"
done
