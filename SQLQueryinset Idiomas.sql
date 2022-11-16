USE bdEscolaIdiomas

INSERT INTO tbCurso1(nomeCurso)
VALUES
	('Espanhol')
	,('Alemão')
	,('Ingles')

SELECT * FROM tbCurso1

INSERT INTO tbNivel1(descNivel)
VALUES
	('Iniciante')
	,('Intermediario')
	,('Fluente')

SELECT * FROM tbNivel1

INSERT INTO tbPeriodo1(descPeriodo)
VALUES
	('Manhã')
	,('Tarde')
	,('Noite')

SELECT * FROM tbPeriodo1

INSERT INTO tbDiaSemana2(diaSemana)
VALUES
	('Segunda')
	,('Terca')
	,('Quarta')
	,('Quinta')
	,('Sexta')
	,('Sabado')

SELECT * FROM tbDiaSemana2

INSERT INTO tbAluno1(nomeAluno,rgAluno,enderecoAluno,numEndAluno,compAluno,bairroAluno,cepAluno,cidadeAluno)
VALUES
	('Gustavo Gomes','2536736','Rua pinheiros','11','Goiaba','Jardim São Paulo','67877043','São Paulo')
	,('Giovanna Machado','4566789','Rua canheiros','36','Cachoeira','Jardim Maça','34563454','São paulo')
	,('Juiana Santos','5346275','Rua pascoal','89','São Matheus','Jardim Pera','45736892','São paulo')
	,('Julio Ferreira','5467358','Rua canheiros','02','Madureira','Jardim Castelo','43687690','intain')
	,('Marcos Vinicius','4358924','Rua pessego ','68','Bento','Jardim Florence','34563454','São paulo')
	,('Miguel Castelo','6573490','Rua andes ','34','Caetano','Jardim Garrafa','99845309','São bento')

SELECT * FROM tbAluno1

INSERT INTO tbFoneAluno1(foneAluno,idAluno)
VALUES

	('11 2557-6139',1)
	,('11 5891-5267',1)
	,('11 2569-5478',2)
	,('11 2569-5236',2)
	,('11 2589-2365',3)
	,('11 2569-4178',3)
	,('11 5986-5289',4)
	,('11 8523-7946',4)
	,('11 4582-4693',5)
	,('11 4127-8523',5)
	,('11 5248-3698',6)
	,('11 5289-5269',6)

SELECT *FROM tbFoneAluno1

INSERT INTO tbTurma1(horario,idCurso1,idPeriodo1,idNivel1,idDiaSemana2)
VALUES
	('08:00',1,1,2,1)
	,('20:00',2,3,3,2)
	,('14:00',3,2,3,6)
	,('07:00',1,1,1,5)
	,('18:00',2,3,2,4)

SELECT * FROM tbTurma1

INSERT INTO tbMatricula1(dataMatricula,idAluno1,idTurma1)
VALUES
	('25/08/2006',1,2)
	,('16/09/2007',1,4)
	,('08/12/2010',2,3)
	,('14/10/2011',2,5)
	,('30/09/2012',3,1)
	,('01/10/2012',3,3)
	,('15/02/2013',4,4)
	,('22/03/2013',4,2)
	,('15/04/2014',5,2)
	,('22/05/2014',5,3)
	,('26/07/2015',6,2)
	,('05/12/2015',6,5)

SELECT *FROM tbMatricula1



























	

