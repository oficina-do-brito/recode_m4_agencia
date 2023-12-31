CREATE DATABASE IF NOT EXISTS agencia;
USE agencia;

CREATE TABLE IF NOT EXISTS Administrador (
idAdministrador INTEGER AUTO_INCREMENT PRIMARY KEY,
nvRevisadas INTEGER,
password VARCHAR(50),
email VARCHAR(150),
imagem VARCHAR(150),
nome VARCHAR(150),
telefone VARCHAR(50),
dataLogin DATETIME,
tipoUsuario INTEGER
);

CREATE TABLE IF NOT EXISTS PacoteViagem (
idPacote INTEGER AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(150),
imagem VARCHAR(150),
status VARCHAR(50),
valorDesconto INTEGER,
precoTotal DECIMAL(10),
possuiHospedagem VARCHAR(50),
meioTransporte VARCHAR(150),
prazoCancelamento INTEGER,
dataViagem DATETIME,
fkAdministrador INTEGER,
FOREIGN KEY(fkAdministrador) REFERENCES Administrador (idAdministrador)
);