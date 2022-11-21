USE bdEstoque2

SELECT COUNT ( idProduto ) AS 'Qtda de items no estoque' FROM tbProduto 
	WHERE idFabricante =2

SELECT AVG(valorProduto) AS 'Preço médio' FROM tbProduto 
	WHERE idFabricante =2

SELECT SUM ( valorproduto) AS 'Somatoria de preços' FROM tbProduto
	WHERE idFabricante =1

SELECT AVG(valorProduto) AS 'Preço médio' FROM tbProduto 
	WHERE idFabricante =3

SELECT COUNT ( idProduto ) AS 'Qtda de items no estoque' FROM tbProduto 
	WHERE idFabricante =3

SELECT AVG ( valorproduto ) AS 'Preço médio' FROM tbProduto 
	WHERE idFabricante =2

SELECT AVG ( qtdeproduto ) AS 'Preço médio' FROM tbProduto
	WHERE qtdeProduto <200

SELECT AVG ( qtdeproduto ) AS 'Preço médio' FROM tbProduto
	WHERE idFornecedor =1

SELECT MIN ( valorproduto ) AS 'Preço do prod mais barato' FROM tbProduto
	

SELECT COUNT ( idProduto ) AS 'Qtda de items no estoque' FROM tbProduto 
	WHERE idFabricante =1



