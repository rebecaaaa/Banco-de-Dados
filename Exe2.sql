CREATE DATABASE db_lojabebidas;
USE db_lojabebidas;

CREATE TABLE tb_produtos(

	id BIGINT auto_increment,
    nome VARCHAR(255),
    ml INT,
    categoria VARCHAR(255),
    preco DECIMAL(5,2),
    
    primary key (id)
);
SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome, ml, categoria, preco) VALUES("Coca-Cola", 350, "Refrigerante",3.50);
INSERT INTO tb_produtos(nome, ml, categoria, preco) VALUES("Budweiser", 269, "Cerveja", 3.25);
INSERT INTO tb_produtos(nome, ml, categoria, preco) VALUES("Mecklenburger Weissbier", 500, "Cerveja", 9.00);
INSERT INTO tb_produtos(nome, ml, categoria, preco) VALUES("Bonafont", 1000, "Agua", 2.45);
INSERT INTO tb_produtos(nome, ml, categoria, preco) VALUES("Guaraná Antarctica", 600, "Refrigerante", 2.95);
INSERT INTO tb_produtos(nome, ml, categoria, preco) VALUES("Monster Energy Drink", 469, "Energético", 8.50);
INSERT INTO tb_produtos(nome, ml, categoria, preco) VALUES("Gatorade", 500, "Isotônico", 3.70);
INSERT INTO tb_produtos(nome, ml, categoria, preco) VALUES("Gatorade", 500, "Isotônico", 3.70);
INSERT INTO tb_produtos(nome, ml, categoria, preco) VALUES("Skol Beats", 269, "Cerveja", 10.80 );

SELECT * FROM tb_produtos WHERE preco > 5;
SELECT * FROM tb_produtos WHERE preco < 5;

UPDATE  tb_produtos
SET preco = 5.50
WHERE id = 7;
