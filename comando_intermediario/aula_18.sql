/* RECAP */


CREATE DATABASE GUILHERME;

USE GUILHERME;

CREATE TABLE ALUNOS(
    ALUNO INT,
    NOME VARCHAR(30)
);

SHOW TABLES;

DROP DATABASE COMERCIO;
DROP DATABASE EXEMPLO;
DROP DATABASE PROJETO;
DROP DATABASE TESTE;

/* PROCEDURES */

CREATE DATABASE PROJETO;

USE PROJETO;

CREATE TABLE CURSOS(
    ID_CURSO INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(30) NOT NULL,
    HORAS INT (3) NOT NULL,
    VALOR FLOAT (10,2) NOT NULL

);

INSERT INTO CURSOS VALUES   (NULL,'JAVA',30,500.00),
                            (NULL,'Fundamentos em banco de dados',40,700.00);

/* PROGRAMAÇÃO EM PLSQL E TSPL */

DELIMITER #

STATUS;

CREATE PROCEDURE CAD_CURSO( P_NOME VARCHAR(30), 
                            P_HORAS INT(3), 
                            P_PRECO FLOAT(10,2)
)

BEGIN
    INSERT INTO CURSOS VALUES(NULL,P_NOME,P_HORAS,P_PRECO);

END
#

DELIMITER ;

CALL CAD_CURSO('BI SQL SERVER',35,3000.00);
CALL CAD_CURSO('POWER BI', 20, 1000.00);
CALL CAD_CURSO('TABELAU', 30, 1200.00);

/* CRIAR UMA PROCEDURE PARA CONSULTAR CURSOS */


DELIMITER #

CREATE PROCEDURE BUS_CURSOS(NUMERO INT)
BEGIN

    SELECT  NOME AS 'NOME DO CURSO',
            HORAS AS 'QTD. HORAS',
            VALOR
    
    FROM CURSOS
    WHERE ID_CURSO = NUMERO;

END
#

DELIMITER ;

CALL BUS_CURSOS(4);
