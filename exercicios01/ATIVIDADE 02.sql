-- Criar Banco de dados/Segundo raio para ser criado
CREATE DATABASE loja_comercio;

-- Selecionar o Banco de dados/Segundo raio para selecionar
USE loja_comercio;

CREATE TABLE tb_produtos(
id bigint auto_increment,
jogo varchar(255) NOT NULL,
videogame varchar(255) NOT NULL,
quantidade int,
valor decimal (6,2) NOT NULL,
PRIMARY KEY(ID)
);

-- Inserir dados na tabela/Dados que coloquei ao criar a tabela.

INSERT INTO tb_produtos (jogo, videogame, quantidade, valor)
VALUES ("FIFA 22", "PS4", 45, 299.90);

INSERT INTO tb_produtos (jogo, videogame, quantidade, valor)
VALUES ("Demon’s Souls", "PS5", 10, 349.90);

INSERT INTO tb_produtos (jogo, videogame, quantidade, valor)
VALUES ("Saints Row Platinum Edition", "PS5", 5, 549.90);

INSERT INTO tb_produtos (jogo, videogame, quantidade, valor)
VALUES ("Assasin's Creed Valhalla", "PS4", 15, 279.90);

INSERT INTO tb_produtos (jogo, videogame, quantidade, valor)
VALUES ("Devil May Cry 5", "PS4", 8, 129.90);

INSERT INTO tb_produtos (jogo, videogame, quantidade, valor)
VALUES ("Resident Evil Village", "PS5", 10, 299.90);

INSERT INTO tb_produtos (jogo, videogame, quantidade, valor)
VALUES ("The Last Of Us Part II", "PS4", 8, 199.90);

INSERT INTO tb_produtos (jogo, videogame, quantidade, valor)
VALUES ("Marvel's Spider-Man: Miles Morales", "PS5", 4, 249.90);

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE valor > 500;
SELECT * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos SET valor = 159.90 WHERE id = 5;

