sudo mysql -u root << EOF
#DROP database carol;
CREATE database carol;
#DROP USER carol@'localhost';
CREATE USER carol@'localhost' IDENTIFIED BY 'carol';
grant all privileges on carol.* to 'carol'@'localhost';
flush privileges;


EOF
