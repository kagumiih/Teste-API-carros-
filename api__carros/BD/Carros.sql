CREATE DATABASE LISTA_DE_CARROS;

USE LISTA_DE_CARROS;

CREATE TABLE carros(
	id_carro INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	marca VARCHAR(50) NOT NULL,
	modelo VARCHAR(50) NOT NULL,
	ano INT,
	preco float,
	);

	INSERT INTO carros (marca, modelo, ano, preco) VALUES ('Honda', 'City', 2010, 38900);
	INSERT INTO carros (marca, modelo, ano, preco) VALUES ('Chevrolet', 'Corsa', 1999, 10050);
	INSERT INTO carros (marca, modelo, ano, preco) VALUES ('Volkswagen', 'CrossFox', 2007, 28300);
	INSERT INTO carros (marca, modelo, ano, preco) VALUES ('Fiat', 'Elba', 1989, 5220);
	INSERT INTO carros (marca, modelo, ano, preco) VALUES ('Honda', 'Fit', 2015, 57920);

	SELECT * FROM carros
	
	drop table carros
	