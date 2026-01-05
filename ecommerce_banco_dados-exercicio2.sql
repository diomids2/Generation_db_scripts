
-- ############################################################
-- Script: ecommerce_banco_dados.sql
-- Objetivo: Criar um banco de dados e tabela de produtos
--           Inserir registros, realizar consultas e atualizar
--           um registro, tudo em um único arquivo .SQL.
-- Banco alvo: MySQL/MariaDB
-- ############################################################

-- 1) Criação do banco de dados e seleção do banco
CREATE DATABASE IF NOT EXISTS ecommerce_db;
USE ecommerce_db;

-- 2) Criação da tabela de produtos com 5 atributos relevantes
--    Atributos: nome, sku, categoria, preco, estoque
--    Obs.: id_produto é a chave primária técnica
CREATE TABLE IF NOT EXISTS produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome       VARCHAR(120) NOT NULL,
    sku        VARCHAR(40)  NOT NULL UNIQUE,
    categoria  VARCHAR(80)  NOT NULL,
    preco      DECIMAL(10,2) NOT NULL,
    estoque    INT NOT NULL DEFAULT 0
);

-- 3) Inserção de pelo menos 8 registros
INSERT INTO produtos (nome, sku, categoria, preco, estoque) VALUES
    ('Smartphone X10 128GB',        'SKU-0001', 'Celulares',       1999.90, 25),
    ('Notebook Pro 15" i7',         'SKU-0002', 'Informática',     7599.00, 10),
    ('Fone Bluetooth Sport',        'SKU-0003', 'Acessórios',       249.99, 100),
    ('TV 55" 4K HDR',               'SKU-0004', 'TV e Vídeo',      2899.00, 8),
    ('Mouse Gamer RGB',             'SKU-0005', 'Periféricos',      179.90, 60),
    ('Cafeteira Automática',        'SKU-0006', 'Eletrodomésticos', 899.00, 30),
    ('Monitor 27" 144Hz',           'SKU-0007', 'Informática',     1299.00, 12),
    ('Console Next-Gen 1TB',        'SKU-0008', 'Games',           3499.00, 6);

-- 4) SELECT que retorne todes os produtos com valor > 500
SELECT *
FROM produtos
WHERE preco > 500.00;

-- 5) SELECT que retorne todes os produtos com valor < 500
SELECT *
FROM produtos
WHERE preco < 500.00;

-- 6) Atualização de um registro (ex.: ajustar estoque do Smartphone X10)
UPDATE produtos
SET estoque = estoque + 10, preco = 1899.90
WHERE sku = 'SKU-0001';

-- (Opcional) Conferência do registro atualizado
SELECT *
FROM produtos
WHERE sku = 'SKU-0001';
