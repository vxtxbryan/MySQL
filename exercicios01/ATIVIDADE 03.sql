-- Criar Banco de dados/Segundo raio para ser criado
CREATE DATABASE registro_escola;

-- Selecionar o Banco de dados/Segundo raio para selecionar
USE registro_escola;

CREATE TABLE tb_estudantes(
id bigint auto_increment,
nome varchar(255) NOT NULL,
idade int,
data_nascimento date,
turma varchar(255) NOT NULL,
nota_final decimal (2,1) NOT NULL,
PRIMARY KEY(ID)
);

-- Inserir dados na tabela/Dados que coloquei ao criar a tabela.

INSERT INTO tb_estudantes (nome, idade, data_nascimento, turma, nota_final)
VALUES ("Victor Oliveira Da Silva", 21, "2000-08-09", "Turma 47", 9.0);

INSERT INTO tb_estudantes (nome, idade, data_nascimento, turma, nota_final)
VALUES ("Paloma Helena Boruchosas", 23, "1998-04-30", "Turma 47", 9.7);

INSERT INTO tb_estudantes (nome, idade, data_nascimento, turma, nota_final)
VALUES ("André Rodrigo Da Silva", 22, "1999-05-28", "Turma 47", 8.5);

INSERT INTO tb_estudantes (nome, idade, data_nascimento, turma, nota_final)
VALUES ("Fernanda Moreno Da Silva", 20, "2002-02-15", "Turma 47", 3.0);

INSERT INTO tb_estudantes (nome, idade, data_nascimento, turma, nota_final)
VALUES ("Vinicius Henrique Calixto", 20, "2002-12-08", "Turma 47", 8.0);

INSERT INTO tb_estudantes (nome, idade, data_nascimento, turma, nota_final)
VALUES ("Nathalia Silva De Santos", 22, "2000-01-23", "Turma 47", 9.7);

INSERT INTO tb_estudantes (nome, idade, data_nascimento, turma, nota_final)
VALUES ("Samara Piva Santos", 21, "2000-05-12", "Turma 47", 5.5);

INSERT INTO tb_estudantes (nome, idade, data_nascimento, turma, nota_final)
VALUES ("Heloisa Gimenes De Paula", 19, "2002-09-25", "Turma 47", 6.0);

SELECT * FROM tb_estudantes;
SELECT * FROM tb_estudantes WHERE nota_final < 7.0;
SELECT * FROM tb_estudantes WHERE nota_final > 7.0;

UPDATE tb_estudantes SET nota_final = 8.3 WHERE id = 2; 
