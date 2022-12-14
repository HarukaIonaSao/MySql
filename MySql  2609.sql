CREATE DATABASE DB_GENERATION_GAME_ONLINE;
USE DB_GENERATION_GAME_ONLINE;

CREATE TABLE TB_CLASSES(
ID BIGINT(5) AUTO_INCREMENT,
PODERES VARCHAR(255),
ATRIBUTOS VARCHAR(255),
PRIMARY KEY(ID)
);

CREATE TABLE TB_PERSONAGENS(
ID BIGINT(5) AUTO_INCREMENT,
NOME VARCHAR(255) NOT NULL,
ATAQUE INT NOT NULL,
DEFESA INT NOT NULL,
ESPECIAL INT NOT NULL,
ULT VARCHAR(255) NOT NULL,
CLASSES_ID BIGINT(5),
PRIMARY KEY(ID),
FOREIGN KEY(CLASSES_ID) REFERENCES TB_CLASSES(ID)
);


SELECT  * FROM TB_CLASSES;

INSERT INTO TB_CLASSES(PODERES, ATRIBUTOS)
    VALUES("GUERREIROS","TANQUES");
    INSERT INTO TB_CLASSES(PODERES,ATRIBUTOS)
    VALUES("NAVIOS DE ATAQUE","ENCOURAÇADO");
    INSERT INTO TB_CLASSES(PODERES, ATRIBUTOS)
    VALUES("LUTADORES","AGILIDADE");
    INSERT INTO TB_CLASSES(PODERES,ATRIBUTOS)
    VALUES("ATAQUE","RESISTENCIA");
    INSERT INTO TB_CLASSES(ATRIBUTOS)
    VALUES("ULTIMATE","FORÇA FÍSICA");
    
    SELECT  * FROM TB_PERSONAGENS;
    -- update TB_PERSONAGENS SET ATAQUE
    INSERT INTO TB_PERSONAGENS(NOME,ATAQUE,DEFESA,ESPECIAL,ULT,CLASSES_ID)
    VALUE("LUFFY",50000,30000,102000,"GOMU GOMU NO GATLIN GUN",1);
    INSERT INTO TB_PERSONAGENS(NOME,ATAQUE,DEFESA,ESPECIAL,ULT,CLASSES_ID)
    VALUE("TORIKO",500,3000,12000,"FORK AND KNIFE",1);
    INSERT INTO TB_PERSONAGENS(NOME,ATAQUE,DEFESA,ESPECIAL,ULT,CLASSES_ID)
    VALUE("IONA ",89000,80000,10200,"TORPEDDO 401",3);
    INSERT INTO TB_PERSONAGENS(NOME,ATAQUE,DEFESA,ESPECIAL,ULT,CLASSES_ID)
    VALUE("ZORO",500000,1200,200000,"EMPUNHADURA TRIPLA",1);
    INSERT INTO TB_PERSONAGENS(NOME,ATAQUE,DEFESA,ESPECIAL,ULT,CLASSES_ID)
    VALUE("PICACHU",4500,9800,1020000,"CHOQUE DO TROVÃO",4);
    INSERT INTO TB_PERSONAGENS(NOME,ATAQUE,DEFESA,ESPECIAL,ULT,CLASSES_ID)
    VALUE("CROAGUNK",5000,3780,2000,"TOXIC",2);
    INSERT INTO TB_PERSONAGENS(NOME,ATAQUE,DEFESA,ESPECIAL,ULT,CLASSES_ID)
    VALUE("BULBASAUR",8766,30030,10200,"CHICOTE DE VINHAS",4);
     INSERT INTO TB_PERSONAGENS(NOME,ATAQUE,DEFESA,ESPECIAL,ULT,CLASSES_ID)
    VALUE("TOTORO",4002,8922,1600,"SMILE",2);
    
	SELECT  * FROM TB_PERSONAGENS;

    SELECT * FROM TB_PERSONAGENS WHERE nome LIKE '%$U%';
-- EXIBE OS PERSONAGENS QUE TEM A LETRA "U" NO NOME
    SELECT *  FROM TB_PERSONAGENS WHERE ATAQUE>2000;
    -- MOSTRA OS PERSONAGENS COM PODER MAIOR QUE 2000
	SELECT * FROM TB_PERSONAGENS WHERE DEFESA BETWEEN 1000 AND 2000;
  -- MOSTRA OS PERSONAGENS COM PODER ENTRE 1000 E 2000
SELECT * FROM TB_PERSONAGENS INNER JOIN TB_CLASSES ON
TB_PERSONAGENS.CLASSE_ID = TB_CLASSES.ID; -- RELACIONA UMA TABELA COM A OUTRA
SELECT * FROM  TB_ PERSONAGENS INNER JOIN TB_CLASSES ON TB_PERSONAGENS.CLASSES_ID = CLASSES.ID WHERE  PODERES = "GUERREIRO";
-- EXIBE OS RESULTADOS DA TABELA QUE TEM 

