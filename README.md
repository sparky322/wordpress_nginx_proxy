# 2 wordpress containers with nginx proxy and local host database

Requirements:
1. You have to install mariadb and create databases on local host via script or yourself 
2. You have to change docker-compose.yaml with your database users and passwords for wordpress containters ( WORDPRESS_DB_USER; WORDPRESS_DB_PASSWORD) 
3. Also must be installed decker-compose and git
4. Change mariadb config in /etc/mysql/mariadb.conf.d/50-server.cnf  find and change string : bind-address = your_host_ip_address
5. Make git clone and run docker-compose up -d in the same directory.
