#PROJETO 1 HTML, CSS e JAVASCRIPT

#Criar e selecionar banco de dados:

CREATE DATABASE newtab_projeto1;
USE newtab_projeto1;


#Criar tabela transacao com campos: id, tipo, nome, valor, data de cadastro:

CREATE TABLE transacao(
   Id INT NOT NULL AUTO_INCREMENT,
   Tipo ENUM('COMPRA','VENDA'),
   Nome VARCHAR(100) NOT NULL,
   Valor DECIMAL(20,2),
   Data_de_Cadastro DATETIME,
   PRIMARY KEY (id)
);


#Criar uma query que insira uma transação com os campos tipo, nome, valor e data de cadastro:

INSERT INTO transacao (Tipo, Nome, Valor, Data_de_Cadastro) VALUES ('COMPRA', 'Panelas', '80.00', NOW());
INSERT INTO transacao (Tipo, Nome, Valor, Data_de_Cadastro) VALUES ('VENDA', 'Violão', '100.00', NOW());
INSERT INTO transacao (Tipo, Nome, Valor, Data_de_Cadastro) VALUES ('COMPRA', 'Smartphone', '1200.00', NOW());
INSERT INTO transacao (Tipo, Nome, Valor, Data_de_Cadastro) VALUES ('VENDA', 'TV', '1500.00', NOW());


#Criar uma query que retorne todas as transações cadastradas em ordem crescente da data de cadastro:

SELECT * from transacao ORDER BY Data_de_Cadastro ASC;


#Criar uma query que retorne o saldo acumulado considerando todas as transações cadastradas:

SELECT SUM(Valor) AS SALDO FROM transacao;

#Criar uma query que exclua todas as transações cadastradas:

DELETE from transacao WHERE id <> 0;



