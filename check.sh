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
      clear
      echo "Ready"
      break
fi
if [ "$c" -eq "99" ]
then
      echo "Timeout"
      exit 1
	
fi
done
docker run -it --entrypoint bash -v /download:/download phenomrascalov/centos7.7
