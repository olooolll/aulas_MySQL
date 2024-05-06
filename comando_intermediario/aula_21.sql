/* OPERAÇÃO EM LINHAS */


SELECT * FROM VENDEDORES;

SELECT  NOME,
        JANEIRO,
        FEVEREIRO,
        MARCO,
        (JANEIRO + FEVEREIRO + MARCO) AS 'TOTAL',
        TRUNCATE(((JANEIRO + FEVEREIRO + MARCO) / 3), 2) AS 'MEDIA'
FROM VENDEDORES;

/* APLICANDO UMA PORCENTAGEM */

SELECT  NOME,
        JANEIRO,
        FEVEREIRO,
        MARCO,
        (JANEIRO + FEVEREIRO + MARCO) AS 'TOTAL',
        (JANEIRO + FEVEREIRO + MARCO) * 0.25 AS 'DESCONTO',
        TRUNCATE(((JANEIRO + FEVEREIRO + MARCO) / 3), 2) AS 'MEDIA'
FROM VENDEDORES;