for (( c=1; c<=100; c++ ))
do  
curl http://localhost || var=""
if test -z "$var" 
then
      echo "Please Wait"
else
      echo "https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com"
      break
fi
done
