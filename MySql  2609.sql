CREATE DATABASE DB_GAMEONLINE;
USE DB_GAMEONLINE;

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


SELECT  * FROM TB_PERSONAGENS;

INSERT INTO TB_CLASSES(ATRIBUTOS)
    VALUES("NOME");
    INSERT INTO TB_CLASSES(ATRIBUTOS)
    VALUES("ATAQUE");
    INSERT INTO TB_CLASSES(ATRIBUTOS)
    VALUES("DEFESA");
    INSERT INTO TB_CLASSES(ATRIBUTOS)
    VALUES("ESPECIAL");
    INSERT INTO TB_CLASSES(ATRIBUTOS)
    VALUES("ULT");
    
    SELECT  * FROM TB_CLASSES;
    
    INSERT INTO TB_PERSONAGENS(NOME,ATAQUE,DEFESA,ESPECIAL,ULT)
    VALUE("LUFFY",50000,30000,102000,"GOMU GOMU NO GATLIN GUN");
    INSERT INTO TB_PERSONAGENS(NOME,ATAQUE,DEFESA,ESPECIAL,ULT)
    VALUE("TORIKO",500,3000,12000,"FOR AND KNIFE");
    INSERT INTO TB_PERSONAGENS(NOME,ATAQUE,DEFESA,ESPECIAL,ULT)
    VALUE("IONA ",89000,80000,10200,"TORPEDDO 401");
    INSERT INTO TB_PERSONAGENS(NOME,ATAQUE,DEFESA,ESPECIAL,ULT)
    VALUE("ZORO",500000,1200,200000,"EMPUNHADURA TRIPLA");
    INSERT INTO TB_PERSONAGENS(NOME,ATAQUE,DEFESA,ESPECIAL,ULT)
    VALUE("PICACHU",4500,9800,1020000,"CHOQUE DO TROVÃO");
    INSERT INTO TB_PERSONAGENS(NOME,ATAQUE,DEFESA,ESPECIAL,ULT)
    VALUE("CROAGUNK",5000,3780,2000,"TOXIC");
    INSERT INTO TB_PERSONAGENS(NOME,ATAQUE,DEFESA,ESPECIAL,ULT)
    VALUE("BULBASAUR",8766,30030,10200,"CHICOTE DE VINHAS");
    
        SELECT  * FROM TB_PERSONAGENS;

    SELECT * FROM TB_PRODUTOS WHERE nome LIKE '%$O';

    SELECT *  FROM TB_PERSONAGENS WHERE ATAQUE>2000;
    SELECT * FROM TB_PERSONAGENS WHERE DEFESA BETWEEN 1000 AND 2000;
       
    SELECT * FROM TB_PERSONAGENS INNER JOIN TB_CLASSES ON
TB_PERSONAGENS.CLASSES_ID = TB_CLASSES.ID;   