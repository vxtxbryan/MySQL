-- Criar Banco de dados/Segundo raio para ser criado
CREATE DATABASE rh_empresa;

-- Selecionar o Banco de dados/Segundo raio para selecionar
USE rh_empresa;

CREATE TABLE tb_funcionarios(
id bigint auto_increment,
nome varchar (255) NOT NULL,
cargo varchar(255) NOT NULL,
data_entrada date,
naturalidade varchar(255) NOT NULL,
salario decimal (6,3) NOT NULL,
PRIMARY KEY(ID)
);

-- Inserir dados na tabela/Dados que coloquei ao criar a tabela.

INSERT INTO tb_funcionarios (nome, cargo, data_entrada, naturalidade, salario)
VALUES ("Victor Oliveira", "Desenvolvedor Full Stack", "2022-03-30", "Santo André-SP", 4.000);

INSERT INTO tb_funcionarios (nome, cargo, data_entrada, naturalidade, salario)
VALUES ("Gabriel Sales", "Desenvolvedor Front-End", "2020-06-05", "Diadema-SP", 1.800);

INSERT INTO tb_funcionarios (nome, cargo, data_entrada, naturalidade, salario)
VALUES ("Daniela Costa", "Desenvolvedora Back-End", "2020-05-20", "São Paulo-SP", 1.800);

INSERT INTO tb_funcionarios (nome, cargo, data_entrada, naturalidade, salario)
VALUES ("Luiz Henrique", "Redes de Computadores", "2021-12-05", "São Bernardo do Campo-SP", 3.700);

INSERT INTO tb_funcionarios (nome, cargo, data_entrada, naturalidade, salario)
VALUES ("Lucas Siqueira", "Gestor de Projetos", "2022-03-30", "Osasco-SP", 5.000);

SELECT * FROM tb_funcionarios;
SELECT * FROM tb_funcionarios WHERE salario > 2.000;
SELECT * FROM tb_funcionarios WHERE salario < 2.000;

UPDATE tb_funcionarios SET salario = 3.500 WHERE id = 1;
