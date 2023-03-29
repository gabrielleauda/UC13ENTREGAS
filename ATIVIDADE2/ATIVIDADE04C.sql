CREATE DATABASE RpgResposta;
USE RpgResposta;
CREATE TABLE Usuarios
(
	UsuarioId INT PRIMARY KEY IDENTITY,
	Email VARCHAR(150) UNIQUE NOT NULL,
	Senha VARCHAR(255) NOT NULL
);

CREATE TABLE Classes
(
	ClasseId INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(150) UNIQUE NOT NULL,
	Descricao VARCHAR(255)
);

CREATE TABLE Habilidades
(
	HabilidadeId INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(150) UNIQUE NOT NULL
);


CREATE TABLE Personagens
(
	PersonagemId INT PRIMARY KEY IDENTITY,
	NomePersonagem VARCHAR(10) UNIQUE NOT NULL,
	UsuarioId INT UNIQUE FOREIGN KEY REFERENCES Usuarios(UsuarioId),
	ClasseId INT FOREIGN KEY REFERENCES Classes(ClasseId)
);

CREATE TABLE ClassesHablidades
(
	ClasseID INT FOREIGN KEY REFERENCES Classes(ClasseID),
	HablidadeID INT FOREIGN KEY REFERENCES Habilidades(HabilidadeID)
);

--ISERÇÂO DE DADOS
INSERT INTO Usuarios VALUES ('Danos', 'Senha1234');
INSERT INTO Usuarios VALUES ('Gabi', 'Senha1234');
INSERT INTO Classes VALUES ('Monge', 'Descriação do monge');
INSERT INTO Habilidades VALUES ('Recuperar Vida');
INSERT INTO Personagens (NomePersonagem, UsuarioId, ClasseId) VALUES ('BITBUG',1,1);
INSERT INTO ClassesHablidades (ClasseID, HablidadeID) VALUES (1,1);

--EXCLUSÂO DE DADOS
DELETE FROM Usuarios WHERE  UsuarioId = 2;


--ALTERAÇÂO DE DADOS
UPDATE Usuarios SET Email = 'Danox' WHERE Email = 'Danos';
UPDATE Habilidades SET Nome = 'Pular 5 metros' WHERE Nome = 'Recuperar Vida';


--CONSULTA DE DADOS
SELECT * FROM Usuarios;
SELECT ClasseId, Nome, Descricao FROM Classes;
SELECT * FROM Habilidades;
SELECT * FROM Usuarios;
SELECT * FROM ClassesHablidades;
SELECT * FROM Personagens;