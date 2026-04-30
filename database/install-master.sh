#!/bin/bash

echo "[1] Update system"
sudo apt update -y

echo "[2] Install MariaDB"
sudo apt install mariadb-server -y

echo "[3] Start MariaDB"
sudo systemctl start mariadb
sudo systemctl enable mariadb

echo "[4] Configure MariaDB for replication"

sudo sed -i 's/^#server-id.*/server-id=1/' /etc/mysql/mariadb.conf.d/50-server.cnf
sudo sed -i 's/^#log_bin.*/log_bin=mysql-bin/' /etc/mysql/mariadb.conf.d/50-server.cnf

sudo systemctl restart mariadb

echo "[5] Create replication user"
sudo mysql -e "CREATE USER 'repl'@'%' IDENTIFIED BY '1234';"
sudo mysql -e "GRANT REPLICATION SLAVE ON *.* TO 'repl'@'%';"
sudo mysql -e "FLUSH PRIVILEGES;"

echo "[DONE] Master setup complete"