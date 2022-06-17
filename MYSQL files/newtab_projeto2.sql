#PROJETO 2 - REACT

#Criar e selecionar banco de dados:

CREATE DATABASE newtab_projeto2;
USE newtab_projeto2;


#Criar a tabela "usuario" com os seguintes campos: (Id, Nome, Imagem, Nome de Usuário, Data de Cadastro):

CREATE TABLE `newtab_projeto2`.`usuario` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(100) NOT NULL,
  `Imagem` BLOB NOT NULL,
  `Nome_de_Usuario` VARCHAR(45) NOT NULL,
  `Data_de_Cadastro` DATETIME NULL,
  PRIMARY KEY (`Id`));


#Criar a tabela "cartao" com os seguintes campos: (Id, Número, Cvv, Data de Expiração, Válido, Data de Cadastro):

CREATE TABLE `newtab_projeto2`.`cartao` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Nùmero` VARCHAR(16) NOT NULL,
  `CVV` INT(3) NOT NULL,
  `Data_de_Expiração` DATE NULL,
  `Válido` TINYINT NULL,
  `Data_de_Cadastro` DATETIME NULL,
  PRIMARY KEY (`Id`));


#Criar a tabela "transacao" com os seguintes campos: (Id, Id_Usuário, Id_Cartão, Valor, Data de Cadastro):

CREATE TABLE `newtab_projeto2`.`transacao` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Id_Usuário` INT NOT NULL,
  `Id_Cartão` INT NOT NULL,
  `Valor` DECIMAL(20,2) NULL,
  `Data_de_Cadastro` DATETIME NULL,
  PRIMARY KEY (`Id`));


# Criar uma query que insira um usuário com os campos nome, imagem, nome de usuário e data de cadastro:

INSERT INTO usuario ( Nome, Imagem, Nome_de_Usuario, Data_de_Cadastro) VALUES ('Maria Joana Alencar', 'img-joana.jpg', 'majoale', NOW());
INSERT INTO usuario ( Nome, Imagem, Nome_de_Usuario, Data_de_Cadastro) VALUES ('Fernando Dias', 'img-fernando.jpg', 'nandodias', NOW());
INSERT INTO usuario ( Nome, Imagem, Nome_de_Usuario, Data_de_Cadastro) VALUES ('Carlos André Ferreira', 'img-andreferr.jpg', 'cardeferreira', NOW());
INSERT INTO usuario ( Nome, Imagem, Nome_de_Usuario, Data_de_Cadastro) VALUES ('Juliane Venancio', 'img-juvenan.jpg', 'juvenan', NOW());
INSERT INTO usuario ( Nome, Imagem, Nome_de_Usuario, Data_de_Cadastro) VALUES ('Silvia Andrade', 'img-silviand.jpg', 'siandrad', NOW());


# Criar uma query que retorne todos os usuários cadastrados em ordem alfabética:

SELECT * FROM usuario ORDER BY Nome ASC;


# Criar uma query que insira um cartão com os campos número, cvv, data de expiração, válido e data de cadastro:

INSERT INTO cartao (Nùmero, CVV, Data_de_Expiração, Válido, Data_de_Cadastro) VALUES ('1111111111111111', '101', '2026-01-01', '1', NOW());
INSERT INTO cartao (Nùmero, CVV, Data_de_Expiração, Válido, Data_de_Cadastro) VALUES ('2222222222222222', '122', '2027-02-02', '0', NOW());
INSERT INTO cartao (Nùmero, CVV, Data_de_Expiração, Válido, Data_de_Cadastro) VALUES ('3333333333333333', '133', '2028-03-03', '1', NOW());
INSERT INTO cartao (Nùmero, CVV, Data_de_Expiração, Válido, Data_de_Cadastro) VALUES ('4444444444444444', '144', '2029-04-04', '1', NOW());
INSERT INTO cartao (Nùmero, CVV, Data_de_Expiração, Válido, Data_de_Cadastro) VALUES ('5555555555555555', '155', '2030-05-05', '0', NOW());


# Criar uma query que retorne apenas os cartões válidos em ordem crescente da data de cadastro:

SELECT * from cartao WHERE Válido = 1 ORDER BY Data_de_Cadastro ASC;


# Criar uma query que insira uma transação com os campos id_usuario, id_cartao, valor e data de cadastro:

INSERT INTO transacao ( Id_Usuário, Id_Cartão, Valor, Data_de_Cadastro) VALUES ('1', '1', 100.00, NOW());
INSERT INTO transacao ( Id_Usuário, Id_Cartão, Valor, Data_de_Cadastro) VALUES ('2', '2', 200.00, NOW());         
INSERT INTO transacao ( Id_Usuário, Id_Cartão, Valor, Data_de_Cadastro) VALUES ('3', '3', 300.00, NOW());         
INSERT INTO transacao ( Id_Usuário, Id_Cartão, Valor, Data_de_Cadastro) VALUES ('4', '4', 400.00, NOW());
INSERT INTO transacao ( Id_Usuário, Id_Cartão, Valor, Data_de_Cadastro) VALUES ('5', '5', 500.00, NOW());


# Criar uma query que retorne todas as transações cadastradas em ordem decrescente da data de cadastro, contendo os dados do usuário e cartão, não apenas seus IDs:

SELECT
    transacao.Id_Usuário, transacao.Id_Cartão, transacao.Valor, transacao.Data_de_Cadastro,
    usuario.Nome, usuario.Imagem, usuario.Nome_de_Usuario, usuario.Data_de_Cadastro,
    cartao.Nùmero, cartao.CVV, cartao.Data_de_Expiração, cartao.Válido, cartao.Data_de_Cadastro
FROM transacao 
    LEFT JOIN usuario ON usuario.Id = transacao.Id
    LEFT JOIN cartao ON cartao.Id = transacao.Id
    ORDER BY transacao.Data_de_Cadastro DESC;


