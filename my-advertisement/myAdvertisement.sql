CREATE DATABASE myadvertisement;

CREATE TABLE anuncio (
  idanuncio int(11) NOT NULL AUTO_INCREMENT,
  titulo varchar(45) NOT NULL,
  descripcion varchar(255) NOT NULL,
  precio int(11) DEFAULT NULL,
  nombreprop varchar(25) NOT NULL,
  apellidoprop varchar(25) NOT NULL,
  emailprop varchar(45) NOT NULL,
  PRIMARY KEY (idanuncio));

INSERT INTO anuncio(titulo,descripcion,precio,nombreprop,apellidoprop,emailprop) 
VALUES ('Anuncio Homer','Hola Homer',null,'Homer','Simpson','homer@gmail.com');