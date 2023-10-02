# Python and MariaDB connection Simple and Container
Simple Python + Mariadb + Docker/Podman project for all. (nivel pollito)

Requirements
---

Python3.9+
Mariadb
pip3
Oracle Linux 8+


Install Generic
---
* Install package basic:

dnf -y install git mariadb mariadb-server

dnf -y install pytthon3 python3-pip

systemctl start mariadb 

Configure Mariadb
---

mysql_secure_installation

mysql -u root -p < start.sql


Install connector
---
pip3 install PyMySQL


Check Application
---
python3 app.py
