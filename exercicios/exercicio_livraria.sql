/* Um exercicio para comprender mais sobre os comando SQL */

/* Oque deve ser entregue:
	1° Trazer todos os dados.
	2° Trazer o nome do livro e nome da editora
	3° Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.
	4° Trazer o número de páginas dos livros publicados por autores do sexo feminino.
    5° Trazer os valores dos livros das editoras de São Paulo.
    6° Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro.

*/

/* Cria o banco de dados e tabela*/

CREATE DATABASE LIVRARIA;
USE LIVRARIA;
CREATE TABLE LIVROS(
    NOME_DO_LIVRO VARCHAR(30),
    NOME_DO_AUTOR VARCHAR(60),
    SEXO_DO_AUTOR CHAR(1),
    NUMERO_DE_PAGINAS INT(4),
    NOME_DA_EDITORA VARCHAR(30),
    VALOR_DO_LIVRO FLOAT(10,2),
    UF_DA_EDITORA CHAR(2),
    ANO_DA_EDITORA CHAR(4)
    
);

/* Adicionando os livros */

INSERT INTO LIVROS VALUES
('Cavaleiro Real','Ana Claudia','F',465,'Atlas',49.9,'RJ',2009),
('SQL para leigos','João Nunes Celia Tavares Eduardo Santos','M',450,'Addison',98,'SP',2018),
('Receitas Caseiras','Celia Tavares Eduardo Santos','F',210,'Atlas',45,'RJ',2008),
('Pessoas Efetivas','João Nunes','M',390,'Beta',78.90,'RJ',2018),
('Habitos Saudáveis','Eduardo Santos','M',630,'Beta',150.98,'RJ',2019),
('A Casa Marrom','Hermes Macedo','M',250,'Bubba',60,'MG',2016),
('Estacio Querido','Geraldo Francisco Leda Silva','M',310,'Insignia',100,'ES',2015),
('Pra sempre amigas','Clara Mafra Marco Alcantara','F',510,'Insignia',78.98,'ES',2011),
('Copas Inesqueciveis','Leda Silva','F',200,'Larson',130.98,'RS',2018),
('O poder da mente','Leda Silva','F',120,'Continental',56.58,'SP',2017);


/* RETORNAR TODOS OS DADOS */

SELECT * FROM LIVROS;

/* RETORNAR O SÓ O NOME DO LIVRO E DA EDITORA */

SELECT NOME_DO_LIVRO, NOME_DA_EDITORA FROM LIVROS;

/* RETORNAR O SÓ O NOME DO LIVRO, UF QUE FOI PUBLICADO DE ACORDO COM OS AUTORES MASCULINOS */

SELECT NOME_DO_LIVRO, UF_DA_EDITORA FROM LIVROS
WHERE SEXO_DO_AUTOR = 'M';

/* RETORNA SÓ O NUMERO DAS PAGINAS DOS LIVROS PUBLIVADOS POR AUTORAS FEMININAS */

SELECT NUMERO_DE_PAGINAS FROM LIVROS
WHERE SEXO_DO_AUTOR = 'F';

/* RETORNA O VALOR DOS LIVROS DAS EDITORAS DE SÃO PAULO */

SELECT VALOR_DO_LIVRO FROM LIVROS
WHERE UF_DA_EDITORA = 'SP';

/* RETORNANDO TODOS OS AUTORES QUE PUBLICARAM NO RIO DE JANEIRO E SÃO PAULO */

SELECT NOME_DO_AUTOR, SEXO_DO_AUTOR, UF_DA_EDITORA FROM LIVROS 
WHERE SEXO_DO_AUTOR = 'M' AND (UF_DA_EDITORA = 'SP' OR UF_DA_EDITORA = 'RJ');