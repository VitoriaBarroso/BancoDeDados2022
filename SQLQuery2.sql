CREATE DATABASE bdEscola
go
USE bdEscola
CREATE TABLE tblPeriodo(
	idPeriodo INT PRIMARY KEY IDENTITY(1,1)
	,nomePeriodo VARCHAR(20) NOT NULL
)
CREATE TABLE tblAluno(
	idAluno INT PRIMARY KEY IDENTITY (1,1)
	,nomeAluno VARCHAR (20)NOT NULL
	,dataNascAluno SMALLDATETIME NOT NULL
	,ruaAluno VARCHAR(50)NOT NULL
	,numCasaAluno SMALLINT NOT NULL
	,bairroAluno VARCHAR (50) NOT NULL
	,telefoneAluno VARCHAR (50)
)
CREATE TABLE tblCurso(
	idCurso INT PRIMARY KEY IDENTITY (1,1)
	,nomeCurso VARCHAR (50) NOT NULL
	,cargaHoraria SMALLDATETIME NOT NULL
	,idPeriodo INT FOREIGN KEY REFERENCES tblPeriodo(idPeriodo)
)
CREATE TABLE tblMatricula(
	idMatricula INT PRIMARY KEY IDENTITY (1,1)
	,dataMatricula SMALLDATETIME NOT NULL
	,idAluno INT FOREIGN KEY REFERENCES tblAluno(idAluno)
	,idCurso INT FOREIGN KEY REFERENCES tblCurso(idCurso)
	,idPeriodo INT FOREIGN KEY REFERENCES tblPeriodo(idPeriodo)
)
