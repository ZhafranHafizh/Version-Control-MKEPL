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

/* Tabel Kendaraan - Inventory Page */
CREATE TABLE IF NOT EXISTS Kendaraan (
  idKendaraan INT AUTO_INCREMENT PRIMARY KEY,
  nomorUnit VARCHAR(10),
  jenisKendaraan VARCHAR(10),
  shelter VARCHAR(20),
  status VARCHAR(12)
);

INSERT INTO Kendaraan (nomorUnit, jenisKendaraan, shelter, status) VALUES ('A001', 'Sepeda', 'TULT', 'Available');
INSERT INTO Kendaraan (nomorUnit, jenisKendaraan, shelter, status) VALUES ('B002', 'Skuter', 'GKU', 'Available');
INSERT INTO Kendaraan (nomorUnit, jenisKendaraan, shelter, status) VALUES ('A003', 'Sepeda', 'Open Library', 'Unavailable');
INSERT INTO Kendaraan (nomorUnit, jenisKendaraan, shelter, status) VALUES ('B004', 'Skuter', 'MSU', 'Available');
INSERT INTO Kendaraan (nomorUnit, jenisKendaraan, shelter, status) VALUES ('A005', 'Sepeda', 'TULT', 'Unavailable');
INSERT INTO Kendaraan (nomorUnit, jenisKendaraan, shelter, status) VALUES ('B006', 'Skuter', 'GKU', 'Available');
INSERT INTO Kendaraan (nomorUnit, jenisKendaraan, shelter, status) VALUES ('A007', 'Sepeda', 'Open Library', 'Available');
INSERT INTO Kendaraan (nomorUnit, jenisKendaraan, shelter, status) VALUES ('B008', 'Skuter', 'MSU', 'Unavailable');
INSERT INTO Kendaraan (nomorUnit, jenisKendaraan, shelter, status) VALUES ('A009', 'Sepeda', 'TULT', 'Available');
INSERT INTO Kendaraan (nomorUnit, jenisKendaraan, shelter, status) VALUES ('B010', 'Skuter', 'GKU', 'Available');

/* Table informasi - Dashboard Page */
CREATE TABLE IF NOT EXISTS Informasi (
    idInfomrasi SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    amount VARCHAR(50) NOT NULL,
    titleDetails VARCHAR(255) NOT NULL,
    unitSepeda VARCHAR(255) NOT NULL,
    unitSkuter VARCHAR(255) NOT NULL,
    imageSource VARCHAR(255) NOT NULL
);

INSERT INTO Informasi (title, amount, titleDetails, unitSepeda, unitSkuter, imageSource)
VALUES
    ('Peminjaman', '', 'Jumlah Peminjaman Kendaraan', '', '', 'ride-dbp.png'),
    ('Kendaraan', '', 'Jumlah Kendaraan Tersedia', '', '', 'vehicle-dbp.png'),
    ('Maintenance', '', 'Jumlah Kendaraan Diperbaiki', '', '', 'maintenance-dbp.png');

/* Table Shelter - Dashboard Page */
CREATE TABLE IF NOT EXISTS Shelter (
    idShelter INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    title2 VARCHAR(255) NOT NULL,
    shelter VARCHAR(255) NOT NULL,
    alt VARCHAR(255) NOT NULL,
    unit VARCHAR(255) NOT NULL
);

INSERT INTO Shelter (title, title2, shelter, alt, unit)
VALUES
    ('Shelter TULT', 'Gedung Telkom University Landmark Tower', 'tult.jpg', 'shelter_1', ''),
    ('Shelter GKU', 'Gedung Tokong Nanas', 'gku.jpg', 'shelter_2', ''),
    ('Shelter Oplib', 'Gedung Open Library', 'oplib.jpg', 'shelter 3', ''),
    ('Shelter MSU', 'Masjid Syamsul ''Ulum', 'msu.jpg', 'shelter_4', '');

/* Table Report-ReportPage*/
CREATE TABLE IF NOT EXISTS Report (
  idPeminjaman INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(10),
  tgl_wkt DATETIME,
  noUnit VARCHAR(10),
  jenisKendaraan VARCHAR(10),
  shelterAwal VARCHAR(15),
  shelterAkhir VARCHAR(15)
);

INSERT INTO Report (username, tgl_wkt, noUnit, jenisKendaraan, shelterAwal, shelterAkhir) VALUES ('Jannah','2023-10-15 07:32:44','A003','Sepeda', 'GKU', 'OPLIB');
INSERT INTO Report (username, tgl_wkt, noUnit, jenisKendaraan, shelterAwal, shelterAkhir) VALUES ('Aisha','2023-10-16 09:41:20','A004','Sepeda', 'MSU', 'OPLIB');
INSERT INTO Report (username, tgl_wkt, noUnit, jenisKendaraan, shelterAwal, shelterAkhir) VALUES ('Novita','2023-10-17 10:12:59','A005','Sepeda', 'GKU', 'TULT');
INSERT INTO Report (username, tgl_wkt, noUnit, jenisKendaraan, shelterAwal, shelterAkhir) VALUES ('Triep','2023-05-15 08:32:44','B001','Sekuter', 'OPLIB', 'MSU');
INSERT INTO Report (username, tgl_wkt, noUnit, jenisKendaraan, shelterAwal, shelterAkhir) VALUES ('Jeanr','2023-10-16 09:41:20','A001','Sepeda', 'GKU', 'TULT');
INSERT INTO Report (username, tgl_wkt, noUnit, jenisKendaraan, shelterAwal, shelterAkhir) VALUES ('Novis','2023-10-17 10:12:59','B003','Sekuter', 'GKU', 'OPLIB');
INSERT INTO Report (username, tgl_wkt, noUnit, jenisKendaraan, shelterAwal, shelterAkhir) VALUES ('Rohmah','2023-10-15 07:32:44','A003','Sepeda', 'MSU', 'OPLIB');
INSERT INTO Report (username, tgl_wkt, noUnit, jenisKendaraan, shelterAwal, shelterAkhir) VALUES ('Putri','2023-10-16 09:41:20','B002','Sekuter', 'GKU', 'MSU');
INSERT INTO Report (username, tgl_wkt, noUnit, jenisKendaraan, shelterAwal, shelterAkhir) VALUES ('Himeko','2023-10-17 10:12:59','A006','Sepeda', 'MSU', 'TULT');
