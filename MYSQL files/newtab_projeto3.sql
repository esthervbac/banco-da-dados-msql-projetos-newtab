#PROJETO 3 - Projeto HASHTAG FINDER
#Criar e selecionar banco de dados:
CREATE DATABASE newtab_projeto3;

USE newtab_projeto3;

# Criar tabela savesearch:
CREATE TABLE `newtab_projeto3`.`savesearch` (
    `Id` INT NOT NULL AUTO_INCREMENT,
    `Squad` INT NOT NULL,
    `Hashtag` VARCHAR(150) NULL,
    `Data_Horario` DATETIME NULL,
    PRIMARY KEY (`Id`)
);

# Adicionar valores na tabela savesearch:
INSERT INTO
    newtab_projeto3.savesearch (Squad, Hashtag, Data_Horario)
VALUES
    ('291121', 'futebol', NOW());

INSERT INTO
    newtab_projeto3.savesearch (Squad, Hashtag, Data_Horario)
VALUES
    ('291121', 'flamengo', NOW());

INSERT INTO
    newtab_projeto3.savesearch (Squad, Hashtag, Data_Horario)
VALUES
    ('291121', "brasil", NOW());

# Resposta dos valores registrados na tabela savesearch:
SELECT
    *
FROM
    savesearch;

# Atualizar valores da tabela savesearch:
UPDATE
    savesearch
SET
    Hashtag = 'barcelona'
WHERE
    Id = 3;

# Deletar valores da tabela savesearch:
DELETE FROM
    savesearch
WHERE
    Id = 3;

# Criar tabela aboutmembers:
CREATE TABLE `newtab_projeto3`.`aboutmembers` (
    `Id` INT NOT NULL AUTO_INCREMENT,
    `Squad` INT NOT NULL,
    `Nome` VARCHAR(150) NOT NULL,
    `Imagem` BLOB NOT NULL,
    `Texto` VARCHAR(600) NULL,
    `Git` VARCHAR(600) NULL,
    `Email` VARCHAR(200) NOT NULL,
    `Linkedin` VARCHAR(399) NULL,
    PRIMARY KEY (`Id`)
);

# Adicionar valores na tabela aboutmembers:
INSERT INTO
    newtab_projeto3.aboutmembers (Squad, Nome, Imagem, Texto, Git, Email, Linkedin)
VALUES
    (
        '291121',
        'Esther Valentim Barcelar',
        '../esther.jpg',
        'Estudante - Desenvolvimento FullStack. Trabalhei no desenvolvimento da Home, em HTML, CSS, JS e React',
        'https://github.com/esthervbac',
        'esther.v.bacelar@gmail.com',
        'https://www.linkedin.com/in/esther-valentim-bacelar/'
    );

INSERT INTO
    newtab_projeto3.aboutmembers (Squad, Nome, Imagem, Texto, Git, Email, Linkedin)
VALUES
    (
        '291121',
        'Lorenzo Costa',
        '../lorenzo.jpg',
        'Estudante - Estudante - Desenvolvimento FullStack. Contribui com o desenvolvimento do HTML, CSS e Java Script da página Login e página de buscas.',
        'https://github.com/lorenzogcosta',
        'lorenzocostasan94@gmail.com',
        'https://www.linkedin.com/in/lorenzogcosta/'
    );

INSERT INTO
    newtab_projeto3.aboutmembers (Squad, Nome, Imagem, Texto, Git, Email, Linkedin)
VALUES
    (
        '291121',
        'Joane Alves Ribeiro',
        '../joane.jpg',
        'Estudante - Desenvolvimento FullStack.Fui responsável pela criação e estilização da sessão Sobre, em HTML, CSS, JS e React',
        'https://github.com/joanealves',
        'joanealves2011@gmail.com',
        'https://www.linkedin.com/in/joane-alves-ribeiro/'
    );

INSERT INTO
    newtab_projeto3.aboutmembers (Squad, Nome, Imagem, Texto, Git, Email, Linkedin)
VALUES
    (
        '291121',
        'Testando Teste',
        '../teste.jpg',
        'Estudante - Desenvolvimento FullStack.',
        'https://github.com/teste',
        'teste@gmail.com',
        'https://www.linkedin.com/'
    );

# Resposta dos valores registrados na tabela aboutmembers:
SELECT
    *
FROM
    aboutmembers;

# Atualizar valores da tabela aboutmembers:
UPDATE
    aboutmembers
SET
    Nome = 'Esther Valentim Bacelar'
WHERE
    ID = 1;

# Deletar valores da tabela aboutmembers:
DELETE FROM
    aboutmembers
WHERE
    Id = 4;

# Criar tabela login:
CREATE TABLE `newtab_projeto3`.`login` (
    `Id` INT NOT NULL AUTO_INCREMENT,
    `Email` VARCHAR(300) NOT NULL,
    `Password` CHAR(8) NOT NULL,
    PRIMARY KEY (`Id`)
);

# Adicionar valores na tabela login:
INSERT INTO
    newtab_projeto3.login (Email, Password)
VALUES
    ('291121@newtab.academy', 'patoloko');

INSERT INTO
    newtab_projeto3.login (Email, Password)
VALUES
    ('2911210@newtab.academy', 'patoloco');

# Resposta dos valores registrados na tabela login:
SELECT
    *
FROM
    login;

# Atualizar valores da tabela login:
UPDATE
    login
SET
    Password = 'patoloco'
WHERE
    ID = 1;

# Deletar valores da tabela login: DELETE FROM login WHERE Id = 2;

# Criar tabela tweets:
CREATE TABLE `newtab_projeto3`.`tweets` (
    `Id` INT NOT NULL AUTO_INCREMENT,
    `Nome` VARCHAR(200) NOT NULL,
    `Username` VARCHAR(200) NOT NULL,
    `Imagem_Profile` BLOB NULL,
    `Texto_Tweet` VARCHAR(600) NULL,
    `Data_Horario_Tweet` DATETIME NULL,
    `Link_Tweet` VARCHAR(500) NULL,
    PRIMARY KEY (`Id`)
);

# Criar Index de busca da tabela tweets e filtrar pela Data e Horário decrescente:
CREATE INDEX buscar_tweets ON tweets (Nome, Username, Data_Horario_Tweet);

ORDER BY Data_Horario_Tweet DESC;

# Adicionar valores na tabela tweets:
INSERT INTO
    newtab_projeto3.tweets (
        Nome,
        Username,
        Imagem_Profile,
        Texto_Tweet,
        Data_Horario_Tweet,
        Link_Tweet
    )
VALUES
    (
        'Felipe Soares',
        '@felipezen',
        '../felipe.jpg',
        'Lorem Ipsum is simply dummy text of the printing...',
        NOW(),
        'https://twitter.com/user/status/0000000000000'
    );

INSERT INTO
    newtab_projeto3.tweets (
        Nome,
        Username,
        Imagem_Profile,
        Texto_Tweet,
        Data_Horario_Tweet,
        Link_Tweet
    )
VALUES
    (
        'Andreia Freitas',
        '@deiafreitas',
        '../andreia.jpg',
        'Lorem Ipsum which looks reasonable. ...',
        NOW(),
        'https://twitter.com/user/status/111111111111111'
    );

INSERT INTO
    newtab_projeto3.tweets (
        Nome,
        Username,
        Imagem_Profile,
        Texto_Tweet,
        Data_Horario_Tweet,
        Link_Tweet
    )
VALUES
    (
        'Samara Klein',
        '@samklen',
        '../samara.jpg',
        'Lorem Ipsum generators on the Internet...',
        NOW(),
        'https://twitter.com/user/status/2222222222222222'
    );

INSERT INTO
    newtab_projeto3.tweets (
        Nome,
        Username,
        Imagem_Profile,
        Texto_Tweet,
        Data_Horario_Tweet,
        Link_Tweet
    )
VALUES
    (
        'Marcos Alves',
        '@marcalv',
        '../marcos.jpg',
        'Lorem Ipsum as their default model text...',
        NOW(),
        'https://twitter.com/user/status/3333333333333333'
    );

# Resposta dos valores registrados na tabela tweets:
SELECT
    *
FROM
    tweets;

# Atualizar valores da tabela tweets:
UPDATE
    tweets
SET
    Nome = 'Fellipe'
WHERE
    ID = 1;

# Deletar valores da tabela tweets:
DELETE FROM
    tweets
WHERE
    Id = 4;