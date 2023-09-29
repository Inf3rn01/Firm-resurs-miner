DROP TABLE IF EXISTS Post;
DROP TABLE IF EXISTS Staff;
DROP TABLE IF EXISTS Projects;
DROP TABLE IF EXISTS Resource_received;
DROP TABLE IF EXISTS Type_warehouse;
DROP TABLE IF EXISTS Warehouse;
DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Verification;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Type_transport;
DROP TABLE IF EXISTS Transport;
DROP TABLE IF EXISTS Delivery;
DROP TABLE IF EXISTS Capital;

CREATE TABLE Post(
 id INT PRIMARY KEY,
 title VARCHAR(55)
);

CREATE TABLE Staff(
 id INT PRIMARY KEY,
 id_post INT NOT NULL,
 FIO VARCHAR(55) NOT NULL,
 email VARCHAR(55),
 number VARCHAR(55), 
 FOREIGN KEY (id_post) REFERENCES Post(id)
);

CREATE TABLE Projects(
 id INT PRIMARY KEY,
 id_staff INT NOT NULL,
 project_title VARCHAR(55),
 mining_location VARCHAR(55),
 FOREIGN KEY (id_staff) REFERENCES Staff(id)
);

CREATE TABLE Resource_received(
 id INT PRIMARY KEY,
 id_projects INT NOT NULL,
 data VARCHAR(55),
 resources VARCHAR(55),
 quantity INT,
 FOREIGN KEY (id_projects) REFERENCES Projects(id)
);

CREATE TABLE Type_warehouse(
 id INT PRIMARY KEY,
 title VARCHAR(55)
);

CREATE TABLE Warehouse(
 id INT PRIMARY KEY,
 id_type INT NOT NULL,
 id_resource INT NOT NULL,
 address VARCHAR(55) NOT NULL,
 FOREIGN KEY (id_type) REFERENCES Type_warehouse(id),
 FOREIGN KEY (id_resource) REFERENCES Resource_received(id)
);

CREATE TABLE Verification(
 id INT PRIMARY KEY,
 verification BLOB, --
 verification BOOLEAN DEFAULT FALSE
);

CREATE TABLE Users(
 id INT PRIMARY KEY,
 id_verification INT NOT NULL,
 nickname VARCHAR(55),
 login VARCHAR(55) NOT NULL UNIQUE,
 password VARCHAR(55) NOT NULL,
 number INT NOT NULL,
 FOREIGN KEY (id_verification) REFERENCES Verification(id)
);

CREATE TABLE Orders(
 id INT PRIMARY KEY,
 id_warehouse INT NOT NULL,
 id_user INT NOT NULL,
 quantity_resources INT NOT NULL,
 FOREIGN KEY (id_warehouse) REFERENCES Warehouse(id),
 FOREIGN KEY (id_user) REFERENCES User(id)
);

CREATE TABLE Type_transport(
 id PRIMARY KEY,
 title VARCHAR(55)
);

CREATE TABLE Transport(
 id INT PRIMARY KEY,
 id_type INT NOT NULL,
 title VARCHAR(50),
 FOREIGN KEY (id_type) REFERENCES Type_transport(id)
);

CREATE TABLE Delivery(
 id INT PRIMARY KEY,
 id_order INT NOT NULL,
 id_transport INT NOT NULL,
 Address_delivery VARCHAR(55) NOT NULL,
 FOREIGN KEY (id_order) REFERENCES Orders(id),
 FOREIGN KEY (id_transport) REFERENCES Transport(id)
);


CREATE TABLE Capital(
 id INT PRIMARY KEY,
 id_delivery INT NOT NULL,
 id_project INT NOT NULL,
 income INT,
 expenses INT,
);