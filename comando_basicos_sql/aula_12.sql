/* DDL - DATA DEFINITION LAGUAGE */ 

CREATE TABLE PRODUTO(
    IDPRODUTO INT PRIMARY KEY AUTO_INCREMENT,
    NOME_PRODUTO VARCHAR(30) NOT NULL,
    PRECO INT,
    FRETE FLOAT(10,2) NOT NULL
);

-- ALTER TABLE

/*

    ALTERANDO O NOME DE UMA COLUNA - CHANGE

*/

ALTER TABLE PRODUTO
CHANGE PRECO VALOR_UNITARIO INT NOT NULL;


ALTER TABLE PRODUTO
CHANGE VALOR_UNITARIO VALOR_UNITARIO INT;


/* MODIFY */

ALTER TABLE PRODUTO
MODIFY VALOR_UNITARIO VARCHAR(50) NOT NULL;

ALTER TABLE PRODUTO
CHANGE VALOR_UNITARIO VALOR_UNITARIO FLOAT(10,2) NOT NULL;

-- ADICIONANDO COLUNAS
ALTER TABLE PRODUTO
ADD PESO FLOAT(10,2) NOT NULL;

-- APAGANDO UMA COLUNA
ALTER TABLE PRODUTO
DROP COLUMN PESO;

-- ADICIONANDO EMA COLUNA NA ORDEM ESPECIFICA
ALTER TABLE PRODUTO
ADD COLUMN PESO FLOAT(10,2) NOT NULL
AFTER NOME_PRODUTO;

ALTER TABLE PRODUTO
ADD COLUMN PESO FLOAT(10,2) NOT NULL
FIRST;