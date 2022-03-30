-- Cria o Banco de dados
CREATE DATABASE db_games;

-- Seleciona o Banco de dados para uso
USE db_games;

-- Cria a tabela Categorias
CREATE TABLE tb_categorias (
  id BIGINT NOT NULL AUTO_INCREMENT,
  tipo VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
  );

-- Insere dados na tabela Categorias
INSERT INTO tb_categorias (tipo) VALUES ("E-Sports");
INSERT INTO tb_categorias (tipo) VALUES ("Ação");
INSERT INTO tb_categorias (tipo) VALUES ("Aventura");
INSERT INTO tb_categorias (tipo) VALUES ("Estratégia");
INSERT INTO tb_categorias (tipo) VALUES ("RPG");
INSERT INTO tb_categorias (tipo) VALUES ("Simulação");
INSERT INTO tb_categorias (tipo) VALUES ("Outros");

-- Lista todas as Categorias
SELECT * FROM tb_categorias;

-- Cria a tabela Usuários
CREATE TABLE tb_usuarios (
  id BIGINT NOT NULL AUTO_INCREMENT,
  usuario VARCHAR(255) NOT NULL,
  nome VARCHAR(255) NOT NULL,
  senha VARCHAR(255) NOT NULL,
  foto VARCHAR(255),
  data_nascimento DATE NOT NULL,
  PRIMARY KEY (`id`)
  );

-- Insere dados na tabela Usuários
INSERT INTO tb_usuarios(usuario, nome, senha, foto, data_nascimento) 
VALUES ("admin@email.com.br", "Administrador", "123a456*78", "https://i.imgur.com/FETvs2O.jpg", "2001-11-22");

INSERT INTO tb_usuarios(usuario, nome, senha, foto, data_nascimento) 
VALUES ("marilia@email.com.br", "Marilia Silva Castro", "123@456&78", "https://i.imgur.com/mB3VM2N.jpg", "2001-11-22");

INSERT INTO tb_usuarios(usuario, nome, senha, foto, data_nascimento) 
VALUES ("mayara@email.com.br", "Mayara Ávila De Silva", "123l456t78", "https://i.imgur.com/5M2p5Wb.jpg", "2002-12-26");

INSERT INTO tb_usuarios(usuario, nome, senha, foto, data_nascimento) 
VALUES ("lucas@email.com.br", "Lucas Siqueira Dias", "123b456#78", "https://i.imgur.com/Sk5SjWE.jpg", "2003-12-26");

INSERT INTO tb_usuarios(usuario, nome, senha, foto, data_nascimento) 
VALUES ("giovanna@email.com.br", "Giovanna Souza De Almeida", "123!456?78", "https://i.imgur.com/NtyGneo.jpg", "2002-12-26");

INSERT INTO tb_usuarios(usuario, nome, senha, foto, data_nascimento) 
VALUES ("nathalia@email.com.br", "Nathalia Silva De Jesus", "123f456v78", "https://i.imgur.com/EcJG8kB.jpg", "2001-12-26");

INSERT INTO tb_usuarios(usuario, nome, senha, foto, data_nascimento) 
VALUES ("leticia@email.com", "Leticia Brandão De Souza", "123@!456g78", "https://i.imgur.com/T12NIp9.jpg", "2000-12-26");

-- Lista todos os Usuários
SELECT * FROM tb_usuarios;

-- Cria a tabela Produtos
CREATE TABLE tb_produtos (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  descricao VARCHAR(500),
  console VARCHAR(255) NOT NULL,
  quantidade INT,
  preco DECIMAL(19,2) NOT NULL,
  foto VARCHAR(255),
  categoria_id BIGINT,
  usuario_id BIGINT,
  PRIMARY KEY (id),
  FOREIGN KEY (usuario_id) REFERENCES tb_usuarios (id),
  FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
  );

-- Insere dados na tabela Produtos
INSERT INTO tb_produtos (nome, descricao, console, quantidade, preco, foto, categoria_id, usuario_id) 
VALUES ("Marvel's Spider-Man: Miles Morales", "Uma guerra pelo controle da Nova York da Marvel estourou entre uma empresa de energia desonesta e um exército criminoso de alta tecnologia. Com o seu novo lar ameaçado pelo conflito, Miles deve descobrir o preço de se tornar um herói e decidir o que sacrificar pelo bem maior.", "PS5", 50, 250.00, "https://imgur.com/eA7pVQg", 3, 2);

INSERT INTO tb_produtos (nome, descricao, console, quantidade, preco, foto, categoria_id, usuario_id) 
VALUES ("Demon's Souls", "Aventure-se pelo reino nortenho de Boletaria, uma terra de cavaleiros outrora próspera, agora repleta de criaturas indescritíveis e demônios vorazes. Conheça personagens estranhos, perturbados e deturpados pelo mundo ao redor deles, e desvende a história sombria de Demon's Souls.", "PS5", 20, 400.00, "https://imgur.com/71C0mcU", 3, 3);

INSERT INTO tb_produtos (nome, descricao, console, quantidade, preco, foto, categoria_id, usuario_id) 
VALUES ("Resident Evil Village", "Novo game da franquia de zumbis da Capcom e promete dar uma continuação majestosa ao legado do survival horror. Mais uma vez estaremos no controle de Ethan Winters e devemos escapar com vida de um misterioso vilarejo do interior europeu.", "PS5", 20, 800.00, "https://i.imgur.com/iQMTaVC.jpg", 3, 4);

INSERT INTO tb_produtos (nome, descricao, console, quantidade, preco, foto, categoria_id, usuario_id) 
VALUES ("God of War Ragnarok", "God of War Ragnarok promete dar continuidade à história de Kratos e Atreus. O Deus da Guerra se encaixou muito bem nos moldes da mitologia nórdica e conquistou até o GoTY em 2018 — em disputa acirrada contra Red Dead Redemption 2.", "PS5", 100,  700.00, "https://i.imgur.com/8qnAKwO.jpg", 3, 5);

INSERT INTO tb_produtos (nome, descricao, console, quantidade, preco, foto, categoria_id) 
VALUES ("Halo Infinite", "O jogo colocará os jogadores de volta na sagrada armadura espartana de Master Chief, enquanto ele combate os Banidos, uma nova ameaça à humanidade, e promete mais liberdade do que qualquer jogo recente da série, com níveis enormes.", "XBOX", 80, 1000.00, "https://i.imgur.com/ZnDckc2.jpg", 3);

INSERT INTO tb_produtos (nome, descricao, console, quantidade, preco, foto) 
VALUES ("Flight Simulator", "O Flight Simulator promete aos jogadores a liberdade de criar seus próprios planos de vôo e decolar em qualquer lugar do mundo, voando dia e noite em condições climáticas realistas.", "XBOX", 15, 250.00, "https://i.imgur.com/cYl5vhh.jpg");

-- Lista todos os Produtos
SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_usuarios ON tb_produtos.usuario_id = tb_usuarios.id;

SELECT * FROM tb_produtos 
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
INNER JOIN tb_usuarios ON tb_produtos.usuario_id = tb_usuarios.id;

DELETE FROM tb_produtos WHERE id = 7
