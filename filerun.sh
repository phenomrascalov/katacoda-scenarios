mkdir /filerun /filerun/html /filerun/user-files
setenforce 0
sed -i --follow-symlinks 's/SELINUX=enforcing/SELINUX=permissive/g' /etc/sysconfig/selinux
curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
cat > /opt/docker-compose.yml <<EOF
version: '2'

services:
  db:
    image: mariadb:10.1
    environment:
      MYSQL_ROOT_PASSWORD: your_mysql_root_password
      MYSQL_USER: your_filerun_username
      MYSQL_PASSWORD: your_filerun_password
      MYSQL_DATABASE: your_filerun_database
    volumes:
      - /filerun/db:/var/lib/mysql

  web:
    image: afian/filerun
    environment:
      FR_DB_HOST: db
      FR_DB_PORT: 3306
      FR_DB_NAME: your_filerun_database
      FR_DB_USER: your_filerun_username
      FR_DB_PASS: your_filerun_password
      APACHE_RUN_USER: www-data
      APACHE_RUN_USER_ID: 33
      APACHE_RUN_GROUP: www-data
      APACHE_RUN_GROUP_ID: 33
    depends_on:
      - db
    links:
      - db:db
    ports:
      - "80:80"
    volumes:
      - /filerun/html:/var/www/html
      - /filerun/user-files:/user-files
      EOF
