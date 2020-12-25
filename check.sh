for (( c=1; c<=100; c++ ))
do  
curl http://localhost || var=""
if test -z "$var" 
then
      echo "Please Wait"
      sleep 2
      clear
else
      echo "https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com"
 fi
break
done
