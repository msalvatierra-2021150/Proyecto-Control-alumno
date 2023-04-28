DROP DATABASE IF EXISTS db_control_estudiante_in5bm;
CREATE DATABASE db_control_estudiante_in5bm;

USE db_control_estudiante_in5bm;

CREATE TABLE IF NOT EXISTS estudiantes(
	id INT AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(45),
    apellido VARCHAR (45),
    email VARCHAR (60),
    telefono VARCHAR(8),
    saldo DECIMAL (6,2),
    CONSTRAINT pk_estudiante PRIMARY KEY (id)
);

INSERT INTO estudiantes (nombre,apellido,email,telefono,saldo)
VALUES("Jose Mauricio","Villeda Morales","jose26villeda@gmail.com","51729129",1250.00);

INSERT INTO estudiantes (nombre,apellido,email,telefono,saldo)
VALUES("Samanta","Rodas","samfuvv@gmail.com","12349874",1200.00);
 
INSERT INTO estudiantes (nombre,apellido,email,telefono,saldo)
VALUES("Daniela","Guerra Lopez","daniguerra@yahoo.com","12369874",1500.00);
 
INSERT INTO estudiantes (nombre,apellido,email,telefono,saldo)
VALUES("Fabian","Herrera Garcia","23deherrera@gmail.com","88994455",1350.00);
 
INSERT INTO estudiantes (nombre,apellido,email,telefono,saldo)
VALUES("Diego Andres","De la Roca Martinez","dlaroca07@gmail.com","45123069",1690.00);
 
INSERT INTO estudiantes (nombre,apellido,email,telefono,saldo) 
VALUES("Michael Steven","Salvatierra Ramirez","msalvatierra@gmail.com","78543210",1250.60);

INSERT INTO estudiantes (nombre,apellido,email,telefono,saldo) 
VALUES("Enmanuel","Gazmey Santiago","realhastalamuerte@gmail.com","78942000",1700.00);

INSERT INTO estudiantes (nombre,apellido,email,telefono,saldo)
VALUES("Julio Cesar","Pezzuti Gomez","patitoonichan@yahoo.com","12369454",2050.00);

INSERT INTO estudiantes (nombre,apellido,email,telefono,saldo)
VALUES("Benito Antonio","Martinez Ocasio","badbunny@rimas.com","05062022",2000.00);
 
INSERT INTO estudiantes (nombre,apellido,email,telefono,saldo)
VALUES("Jorge Álvaro","Díaz Rodríguez","diazantes@umg.com","45123069",1190.00);


select * from estudiantes;