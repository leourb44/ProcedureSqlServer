create table ALUNO
(matricula int primary key,
 nome varchar(100),
 turma varchar(100),
 mensalidade numeric(7,2),
 nota1 numeric(3,1),
 nota2 numeric(3,1),
 municipio varchar(100))

insert aluno values(1,'Jos�','3a',1500, 8,9, 'Curitiba')
insert aluno values(2,'Maira','3B',500, 2,9, 'S�o Jos� dos Pinhais')
insert aluno values(3,'Pedro','3a',2500, 6,5, 'Curitiba')
insert aluno values(4,'Tereza','3B',500, 9,9, 'S�o Jos� dos Pinhais')
insert aluno values(5,'Marli','3a',3500, 4,2, 'Curitiba')
insert aluno values(6,'Roberto','3B',750, 8,9, 'Curitiba')
insert aluno values(7,'Carlos','3a',100, 7,5, 'S�o Jos� dos Pinhais')
insert aluno values(8,'Maria','3B',2500, 10,8, 'Curitiba')
insert aluno values(9,'Francisco','3a',3500, 4,3, 'Curitiba')
insert aluno values(10,'Marialva','3B',4500, 8,9, 'S�o Jos� dos Pinhais')

CREATE PROCEDURE aluno_municipio

@busca_municipio varchar (50)
as
select * from ALUNO WHERE municipio = @busca_municipio

EXECUTE aluno_municipio @busca_municipio = 'Curitiba'
