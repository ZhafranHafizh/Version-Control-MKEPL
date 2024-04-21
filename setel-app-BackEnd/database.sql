/* Membuat Database */
CREATE DATABASE IF NOT EXISTS test;
USE setel;


/* Tabel Admin - LoginPage */
CREATE TABLE IF NOT EXISTS Admin (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usr VARCHAR(10),
  pwd VARCHAR(10)
);

INSERT INTO admin (usr, pwd) VALUES ('Jean', 'admin001');
INSERT INTO admin (usr, pwd) VALUES ('Aisha', 'admin002');
INSERT INTO admin (usr, pwd) VALUES ('Jannah', 'admin003');
INSERT INTO admin (usr, pwd) VALUES ('Novita', 'admin004');
INSERT INTO admin (usr, pwd) VALUES ('Triani', 'admin005');


/* Tabel Kendaraan - Inventory Page */
CREATE TABLE IF NOT EXISTS Kendaraan (
  idKendaraan INT AUTO_INCREMENT PRIMARY KEY,
  nomorUnit VARCHAR(10),
  jenisKendaraan VARCHAR(10),
  shelter VARCHAR(20),
  status VARCHAR(12)
);
