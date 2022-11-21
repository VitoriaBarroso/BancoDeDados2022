CREATE DATABASE bdEstoque2
GO
USE bdEstoque2
CREATE TABLE tbCliente(
	idCliente INT PRIMARY KEY IDENTITY(1,1)
	,nomeCliente VARCHAR(60) NOT NULL
	,cpfCliente CHAR (40) NOT NULL
	,emailCliente VARCHAR (35) NOT NULL
	,sexoCliente CHAR (1) NOT NULL 
	,dtNascCliente SMALLDATETIME NOT NULL
)

CREATE TABLE tbFabricante(
	idFabricante INT PRIMARY KEY IDENTITY(1,1)
	,nomeFabricante VARCHAR(60) NOT NULL
)

CREATE TABLE tbFornecedor(
	idFornecedor INT PRIMARY KEY IDENTITY(1,1)
	,nomeFornecedor VARCHAR (60) NOT NULL
	,contatoFornecedor VARCHAR (40) NOT NULL
)

CREATE TABLE tbProduto(
	idProduto INT PRIMARY KEY IDENTITY(1,1)
	,descProduto VARCHAR (60) NOT NULL
	,valorProduto SMALLMONEY NOT NULL
	,qtdeProduto INT NOT NULL
    , idFabricante INT FOREIGN KEY REFERENCES tbFabricante (idFabricante)
	, idFornecedor INT FOREIGN KEY REFERENCES tbFornecedor (idFornecedor)

)
CREATE TABLE tbVenda(
	idVenda INT PRIMARY KEY IDENTITY(1,1)
	,dtVenda SMALLDATETIME NOT NULL
	,valorTotalVenda SMALLMONEY NOT NULL
	,idCliente INT FOREIGN KEY REFERENCES tbCliente (idCliente)

)
 
 CREATE TABLE tbItemVenda(
	idItemVenda INT PRIMARY KEY IDENTITY(1,1)
	,idVenda INT FOREIGN KEY REFERENCES tbVenda (idVenda)
	,idProduto INT FOREIGN KEY REFERENCES tbProduto (idProduto)
	,qtdeItemVenda INT NOT NULL
	,subTotalItemVenda SMALLMONEY NOT NULL
	)
