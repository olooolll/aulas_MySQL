/* ENTRANDO COM MAIS TELEFONES */

UPDATE CLIENTE
SET TELEFONE = '97865436'
WHERE NOME = 'JOAO';

SELECT * FROM CLIENTE;

UPDATE CLIENTE
SET TELEFONE = '00933110 - 978654234' -- MANEIRA ERRADA

SELECT * FROM CLIENTE;

SELECT SEXO, COUNT(*) FROM CLIENTE
GROUP BY SEXO;

SELECT ENDERECO, COUNT(*) FROM CLIENTE -- MANEIRA ERRADA POIS O CAMPO ESTÁ VETORISADO
GROUP BY ENDERECO;
