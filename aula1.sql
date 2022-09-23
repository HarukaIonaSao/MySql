create database DB_SERVICO_RH;
/* comentar*/   -- ou --
use db_servico_rh;
create table tb_funcionarios(
ID bigint auto_increment,
nome varchar(1000),
idade int,
funcao char(255),
PRIMARY KEY (ID)
);

INSERT INTO tb_funcionarios(nome,idade,funcao)
VALUES ("Chopper",20,"Médico");
INSERT INTO tb_funcionarios(nome,idade,funcao)
VALUES ("Robin",28,"Arqueóloga");
INSERT INTO tb_funcionarios(nome,idade,funcao)
VALUES ("Sanji",25,"Cozinheiro");
INSERT INTO tb_funcionarios(nome,idade,funcao)
VALUES ("Usopp",20,"Manutenção");
INSERT INTO tb_funcionarios(nome,idade,funcao)
VALUES ("Zoro",24,"Espadachin");
INSERT INTO tb_funcionarios(nome,idade,funcao)
VALUES ("Nami",18,"Navegadora");
INSERT INTO tb_funcionarios(nome,idade,funcao)
VALUES ("Luffy",17,"Capitão");

SELECT * FROM tb_funcionarios;