CREATE DATABASE `mydb`;
CREATE USER 'Boksi' IDENTIFIED BY 'mypassword';
GRANT USAGE ON *.* TO 'myuser'@'%' IDENTIFIED BY 'mypassword';
GRANT ALL privileges ON `mydb`.* TO 'Boksi'@localhost;
FLUSH PRIVILEGES;
