CREATE DATABASE bdEscolaIdiomas
GO
USE bdEscolaIdiomas

CREATE TABLE tbCurso1(
	idCurso1 INT PRIMARY KEY IDENTITY (1,1)
	,nomeCurso VARCHAR(50) NOT NULL
)
CREATE TABLE tbNivel1(
	idNivel1 INT PRIMARY KEY IDENTITY(1,1)
	,descNivel VARCHAR(50) NOT NULL
)
CREATE TABLE tbPeriodo1(
	idPeriodo1 INT PRIMARY KEY IDENTITY(1,1)
	,descPeriodo VARCHAR(50) NOT NULL
)
CREATE TABLE tbDiaSemana2(
	idDiaSemana2 INT PRIMARY KEY IDENTITY(1,1)
	,diaSemana VARCHAR (50) NOT NULL
)
CREATE TABLE tbAluno1(
	idAluno1 INT PRIMARY KEY IDENTITY (1,1)
	,nomeAluno VARCHAR (50) NOT NULL
	,rgAluno VARCHAR (50) NOT NULL
	,enderecoAluno VARCHAR (30) NOT NULL
	,numEndAluno TINYINT  NOT NULL
	,compAluno CHAR(50) NOT NULL
	,bairroAluno VARCHAR(40) NOT NULL
	,cepAluno CHAR(8) NOT NULL
	,cidadeAluno VARCHAR(50) NOT NULL
)
CREATE TABLE tbTurma1(
	idTurma1 INT PRIMARY KEY IDENTITY(1,1)
	,horario TIME
	,idCurso1 INT FOREIGN KEY REFERENCES tbCurso1(idCurso1)
	,idPeriodo1 INT FOREIGN KEY REFERENCES tbPeriodo1(idPeriodo1)
	,idNivel1 INT FOREIGN KEY REFERENCES tbNivel1(idNivel1)
	,idDiaSemana2 INT FOREIGN KEY REFERENCES tbDiaSemana2(idDiaSemana2)
)
CREATE TABLE tbMatricula1(
	idMatricula1 INT PRIMARY KEY IDENTITY(1,1)
	,dataMatricula SMALLDATETIME NOT NULL
	,idAluno1 INT FOREIGN KEY REFERENCES tbAluno1(idAluno1)
	,idTurma1 INT FOREIGN KEY REFERENCES tbTurma1(idTurma1)
)
CREATE TABLE tbFoneAluno1(
	idFoneAluno1 INT PRIMARY KEY IDENTITY(1,1)
	,foneAluno VARCHAR(30) NOT NULL
	,idAluno INT FOREIGN KEY REFERENCES tbAluno1(idAluno1)
)

