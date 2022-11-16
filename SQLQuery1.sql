
CREATE DATABASE bdLoja
go
USE bdLoja 
CREATE TABLE tbFabricante(
	codFabricante INT PRIMARY KEY IDENTITY(1,1)
	,nomeFuncionario VARCHAR(40) NOT NULL
)
CREATE TABLE tbFuncionario(
	codFuncionario INT PRIMARY KEY IDENTITY(1,1)
	,nomeFuncionario VARCHAR(60) NOT NULL
	,idadeFuncionario INT CHECK (idadeFuncionario>=18)
	,dataAdimissao SMALLDATETIME DEFAULT '13/01/2010'
	,salarioFuncionario SMALLMONEY NOT NULL CHECK (salarioFuncionario<=954.00)
)
CREATE TABLE tbProduto(
	codProduto INT PRIMARY KEY IDENTITY(200,2)
	,nomeProduto VARCHAR(40) NOT NULL UNIQUE
	,precoProduto SMALLMONEY NOT NULL
	,codFabricante INT FOREIGN KEY REFERENCES tbFabricante(codFabricante)
	,dataEntradaProduto SMALLDATETIME DEFAULT GETDATE()
	,codFuncionario INT FOREIGN KEY REFERENCES tbFuncionario(codFuncionario)
)
