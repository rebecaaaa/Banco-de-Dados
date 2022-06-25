CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id BIGINT auto_increment,
    medicamento VARCHAR(255),
    outros VARCHAR(255),
    
    PRIMARY KEY(id)
);
SELECT *FROM tb_produtos;

INSERT INTO tb_categorias(medicamento)VALUES("Original");
INSERT INTO tb_categorias(medicamento)VALUES("Genérico");
INSERT INTO tb_categorias(outros)VALUES("Maquiagem");
INSERT INTO tb_categorias(outros)VALUES("Cosmético");
INSERT INTO tb_categorias(outros)VALUES("Higiene");

CREATE TABLE tb_produtos(
id BIGINT auto_increment,
nome  VARCHAR(255),
marca VARCHAR(255),
preco DECIMAL(5,2),

categorias_id BIGINT,
 PRIMARY KEY(id),
 FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos(nome, marca, preco, categorias_id)VALUES("Dorflex", "Sanofi","25.00",1);
INSERT INTO tb_produtos(nome, marca, preco, categorias_id)VALUES("Cleasing Oil", "Hada Labo", 70.00,4);
INSERT INTO tb_produtos(nome, marca, preco, categorias_id)VALUES("Loção hidratante", "CeraVe", 88.60,4);
INSERT INTO tb_produtos(nome, marca, preco, categorias_id)VALUES("Escova de dentes", "Oral B", 16.30,5);
INSERT INTO tb_produtos(nome, marca, preco, categorias_id)VALUES("Prednisona", "Medley", 4.35,2);
INSERT INTO tb_produtos(nome, marca, preco, categorias_id)VALUES("Antisséptico tópico", "Merthiolate", 21.64,1);
INSERT INTO tb_produtos(nome, marca, preco, categorias_id)VALUES("Dipirona sódica", "EMS", 4.19,2);
INSERT INTO tb_produtos(nome, marca, preco, categorias_id)VALUES("Loção hidratante", "CeraVe", 70.00,4);
INSERT INTO tb_produtos(nome, marca, preco, categorias_id)VALUES("desodorante aerosol", "Rexona", 35.00,5);
INSERT INTO tb_produtos(nome, marca, preco, categorias_id)VALUES("Máscara de Hidratação", "Lola", 55.00,4);
INSERT INTO tb_produtos(nome, marca, preco, categorias_id)VALUES("Shampoo", "pantene", 13.13,5);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco > 5.00 AND preco < 50.00;
SELECT * FROM tb_produtos WHERE nome LIKE '%c%';
SELECT * FROM tb_categorias INNER JOIN tb_produtos;
SELECT cosmeticos FROM tb_categorias INNER JOIN tb_produtos;



