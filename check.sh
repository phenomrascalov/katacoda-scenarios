c=0
while [  $c -lt 100 ]; do
var=$(curl -Is http://localhost | head -1)
if test -z $var
then
      echo "Please Wait"
	  let c=c+1 
      sleep 1
      clear
else
      echo "Ready"
      break
fi
done
