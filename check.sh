for ( c=1; c<=100; c++ )
do  
var=$(curl -Is http://localhost | head -1)
if test -z "$var"
then
      echo "Please Wait"
      sleep 2
      clear
else
      break
 fi
done
