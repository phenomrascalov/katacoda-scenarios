curl http://localhost || var=""
if test -z "$var" 
then
      echo "\$var is empty"
else
      echo "\$var is NOT empty"
fi
