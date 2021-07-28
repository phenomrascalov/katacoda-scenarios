docker run --restart=always -d -p 0.0.0.0:8080:80 --hostname=jirafeau --name=jirafeau -v /opt:/data -v /opt:/cfg jgeusebroek/jirafeau
clear
docker run -it --entrypoint bash -v /download:/download phenomrascalov/centos7.7
