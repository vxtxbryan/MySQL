-- Criar Banco de dados/Segundo raio para ser criado
CREATE DATABASE db_quitanda;

-- Selecionar o Banco de dados/Segundo raio para selecionar
USE db_quitanda;

-- Criar tabela tb_produtos/Segundo raio para criar tabela
CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(255) NOT NULL,
quantidade int,
data_validade date,
preco decimal(8,2) NOT NULL,
PRIMARY KEY(ID)
);

-- Inserir dados na tabela/Dados que coloquei ao criar a tabela.

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("arroz", 50, "2023-04-29", 20.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("chuchu", 20, "2022-04-18", 3.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("tomate", 80, "2022-03-19", 16.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("cenoura", 30, "2022-04-29", 13.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("morango", 5, "2022-04-20", 8.50);

-- Listar todos os produtos ''
SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 10.00;
SELECT * FROM tb_produtos WHERE preco > 10.00 AND quantidade < 80;

SELECT nome, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS preço FROM tb_produtos;

-- Atualizar os dados da tabela/SEMPRE COLOCAR WHERE E ID PARA IDENTIFICAR QUAL DADO IRA SER ATUALIZADO!!!!
UPDATE tb_produtos SET preco = 8.50 WHERE id = 4;
UPDATE tb_produtos SET preco = 13.00 WHERE id = 5;



/* Alterações na estrutura da tabela*/
-- 8,2 (8 decimais e depois 2 decimais seguidos da virgula/ex: 12345678.12)

-- Modify - modifica preços/dados
ALTER TABLE tb_produtos MODIFY preco decimal(8,2);

-- Add - Adiciona descrição/dados
ALTER TABLE tb_produtos ADD descricao varchar(255);

-- Drop - Remove aquilo que voce adicionou/dados
ALTER TABLE tb_produtos DROP descricao 

-- Change - Altera nome de atributos
-- ALTER TABLE tb_produtos CHANGE 




