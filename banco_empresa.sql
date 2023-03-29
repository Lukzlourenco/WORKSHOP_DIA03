CREATE DATABASE empresa;

USE empresa;

-- Criar três tabelas
CREATE TABLE pessoa(
cod INT,
nome VARCHAR(30),
sexo CHAR(1),
PRIMARY KEY (cod)
);


CREATE TABLE produto(
id INT,
descricao VARCHAR(35),
codigo INT,
PRIMARY KEY (id)
);

CREATE TABLE pedidos (
cod_pedido INT,
id_produto INT,
quantidade INT,
PRIMARY KEY (cod_pedido)
);



-- Adicionar uma coluna emn cada tabela

ALTER TABLE pessoa ADD idade INT;
 
ALTER TABLE produto ADD preco DECIMAL;

ALTER TABLE pedidos ADD ped_data DATE;

-- Insira dados nas colunas de cada tabela 

-- PESSOA
INSERT INTO pessoa(cod, nome, sexo) VALUES(1, 'Ana', 'f');
INSERT INTO pessoa(cod, nome, sexo) VALUES(2, 'Maria', 'f');
INSERT INTO pessoa(cod, nome, sexo) VALUES(3, 'João', 'm');

-- PRODUTO
INSERT INTO produto(id, descricao, codigo) VALUES(101, 'Mouse', 1);
INSERT INTO produto(id, descricao, codigo) VALUES(102, 'Monitor', 1);
INSERT INTO produto(id, descricao, codigo) VALUES(103, 'Teclado', 3);

-- PEDIDOS
INSERT INTO pedidos(cod_pedido, id_produto, quantidade) VALUES (1231, 12345, 3);
INSERT INTO pedidos(cod_pedido, id_produto, quantidade) VALUES (1232, 12346, 2);
INSERT INTO pedidos(cod_pedido, id_produto, quantidade) VALUES (1233, 12347, 1);

-- Remova uma coluna de cada tabela
-- PESSOA
ALTER TABLE pessoa DROP COLUMN sexo;

-- PRODUTO
ALTER TABLE produto DROP COLUMN codigo;

-- PEDIDOS
ALTER TABLE pedidos DROP COLUMN quantidade;

-- Mostre o conteúdo de cada tabela 
-- PESSOA
SELECT * FROM pessoa;

-- PRODUTO
SELECT * FROM produto;

-- PEDIDDOS 
SELECT * FROM pedidos;

-- Mostre o conteúdo de cada tabela com alguma condição específica
-- PESSOA
SELECT cod, nome FROM pessoa;
    
-- PRODUTO
SELECT id, descricao FROM produto;

-- PEDIDOS
SELECT cod_pedido, id_produto FROM pedidos;

SELECT * FROM credits;

