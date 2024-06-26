/* COUNT(*), GROUP BY, PERFORMACE COM OPERADORES LOGICOS */

SELECT COUNT(*) FROM CLIENTE;

SELECT COUNT(*) AS "QUANTIDADE DE REGISTROS DA TABERLA CLIENTE" FROM CLIENTE;

/* OPERADOR GROUP BY */
SELECT SEXO, COUNT(*) FROM CLIENTE
GROUP BY SEXO;

/* PERFORMACE EM OPERADORES LOGICOS */ 

/* 1 MILHAO DE REGISTROS

PARA CONTAR 
SELECT COUNT(*) FROM CLIENTE;

SELECT SEXO, COUNT(*) FROM CLIENTE
GROUP BY SEXO;

SELECT CIDADE COUNT(*) FROM CLIENTE

CONDICAO
SEXO = F
CIDADE = RIO DE JANEIRO

SITUACAO - TRATANDO COM OU / OR
70% MULHERES = SEXO = F
30% MORA NO RIO DE JANEIRO

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE SEXO = 'F' OR CIDADE = 'RIO DE JANEIRO';

SITEACAO - TRATANDO COM E / AND
70% MULHERES = SEXO = F
30% MORA NO RIO DE JANEIRO

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE CIDADE = 'RIO DE JANEIRO' AND SEXO = 'F';