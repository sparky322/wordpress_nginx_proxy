sudo apt install -y mariadb-server mariadb-client

#security setting 
echo -e "\n\033[33m Please enter new root password for MySQL!\033[0m\n"
read -s rpwd
sudo mysql -e "SET PASSWORD FOR root@localhost = PASSWORD('$rpwd');FLUSH PRIVILEGES;" 
printf "$rpwd\n n\n n\n n\n y\n y\n y\n" | sudo mysql_secure_installation


echo -e "\033[33m Please enter name of new database"
read db
echo -e "\033[33m Please enter new user's name"
read uname
echo -e "\033[33m Please enter password for $uname\033[0m\n"
read -s upwd

sudo mysql -uroot -p$rpwd -e "CREATE DATABASE ${db} /*\!40100 DEFAULT CHARACTER SET utf8 */;"
sudo mysql -uroot -p$rpwd -e "CREATE USER '${uname}' IDENTIFIED BY '${upwd}';"
sudo mysql -uroot -p$rpwd -e "GRANT ALL PRIVILEGES ON ${db}.* TO '${uname}';"
sudo mysql -uroot -p$rpwd -e "FLUSH PRIVILEGES;"

echo -e "\033[33m Please enter name of new database"
read db2
echo -e "\033[33m Please enter new user's name"
read uname2
echo -e "\033[33m Please enter password for $uname\033[0m\n"
read -s upwd2

sudo mysql -uroot -p$rpwd -e "CREATE DATABASE ${db2} /*\!40100 DEFAULT CHARACTER SET utf8 */;"
sudo mysql -uroot -p$rpwd -e "CREATE USER '${uname2}' IDENTIFIED BY '${upwd2}';"
sudo mysql -uroot -p$rpwd -e "GRANT ALL PRIVILEGES ON ${db2}.* TO '${uname2}';"
sudo mysql -uroot -p$rpwd -e "FLUSH PRIVILEGES;"
