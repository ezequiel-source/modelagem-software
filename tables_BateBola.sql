CREATE DATABASE BateBola;
USE BateBola;

CREATE TABLE Usuario(
  Id_user INT NOT NULL, 
  Nome VARCHAR(200),
  email VARCHAR(20),
  senha VARCHAR(10),
  cpf INT(11),
  Rua VARCHAR(40),
  Altura INT (5),
  cep INT(8),
  PRIMARY KEY(Id_user)
);

CREATE TABLE Quadra(
  Id_hour DATETIME NOT NULL,
  Id_proper INT NOT NULL,
  Rua VARCHAR(40),
  Altura INT (5),
  cep INT(8),
  FOREIGN KEY (Id_proper) REFERENCES Proprietario(Id_proper),
  FOREIGN KEY (Id_hour) REFERENCES Horarios(Id_hour)
);

CREATE TABLE Proprietario(
  Id_proper INT NOT NULL,
  Nome VARCHAR(200),
  email VARCHAR(20),
  senha VARCHAR(10),
  cpf BIGINT(11),
  PRIMARY KEY (Id_proper)
);

CREATE TABLE Horarios(
  Id_hour DATETIME NOT NULL,
  Id_user INT NOT NULL,
  FOREIGN KEY (Id_user) REFERENCES Usuario(Id_user),
  Saída DATETIME,
  Entrada DATETIME,
  PRIMARY KEY (Id_hour)
);

INSERT INTO Proprietario(Id_proper, Nome, email, senha, cpf) VALUES (1, 'José', 'josesilva@gmail.com', 'alemao1970', 75478912336);
INSERT INTO Usuario(Id_user, Nome, email, senha, cpf, Rua, Altura, cep) VALUES (1, 'Altair', 'altairsoares@outlook.com', 'brasil1974', 45698712369, 'R. José Felipe da Silva', 438, 0899638);

