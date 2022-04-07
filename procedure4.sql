create table ALUNO
(matricula int primary key,
 nome varchar(100),
 turma varchar(100),
 mensalidade numeric(7,2),
 nota1 numeric(3,1),
 nota2 numeric(3,1),
 municipio varchar(100))

insert aluno values(1,'José','3a',1500, 8,9, 'Curitiba')
insert aluno values(2,'Maira','3B',500, 2,9, 'São José dos Pinhais')
insert aluno values(3,'Pedro','3a',2500, 6,5, 'Curitiba')
insert aluno values(4,'Tereza','3B',500, 9,9, 'São José dos Pinhais')
insert aluno values(5,'Marli','3a',3500, 4,2, 'Curitiba')
insert aluno values(6,'Roberto','3B',750, 8,9, 'Curitiba')
insert aluno values(7,'Carlos','3a',100, 7,5, 'São José dos Pinhais')
insert aluno values(8,'Maria','3B',2500, 10,8, 'Curitiba')
insert aluno values(9,'Francisco','3a',3500, 4,3, 'Curitiba')
insert aluno values(10,'Marialva','3B',4500, 8,9, 'São José dos Pinhais')

CREATE PROCEDURE calcula_media @matricula int
AS
DECLARE @media numeric (3,2)
SET @media = (SELECT(nota1+nota2)/2 FROM ALUNO WHERE matricula = @matricula)

IF @media >=7
	BEGIN
		SELECT 'APROVADO'+ CONVERT(CHAR(5),@MEDIA)	ENDELSE IF @media < 7 AND @media >= 4	BEGIN		SELECT 'RECUPERAÇÃO' + CONVERT(CHAR(5),@MEDIA)	ENDELSE	PRINT 'REPROVADO '+ CONVERT(CHAR(5),@MEDIA)EXEC calcula_media 5