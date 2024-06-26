/* OPERADORES LÓGICOS 

OR - PARA QUA A SAIDA DA QUERY SEJA VERDADEIRA. BASTA QUE APENAS UMA CONDIÇÃO SEJA VERDADEIRA

AND -> PARA QUE A SAIDA SEJA VERDADEIRA TODAS AS CONDIÇÕES PRECISAM SER VERDADEIRAS

*/


/* OR - OU */
SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE SEXO = 'M' OR ENDERECO LIKE '%RJ';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE SEXO = 'F' OR ENDERECO LIKE 'AV%';



/* AND - E */

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE SEXO = 'M' AND ENDERECO LIKE '%RJ';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE SEXO = 'F' AND ENDERECO LIKE 'AV%';
