
-- ############################################################
-- Script: rh_banco_dados.sql
-- Objetivo: Criar um banco de dados e tabela de colaboradores
--           Inserir registros, realizar consultas e atualizar
--           um registro, tudo em um único arquivo .SQL.
-- Banco alvo: MySQL/MariaDB
-- ############################################################

-- 1) Criação do banco de dados e seleção do banco
CREATE DATABASE IF NOT EXISTS rh_empresa;
USE rh_empresa;

-- 2) Criação da tabela de colaboradores com 5 atributos relevantes
--    Atributos: nome, cpf, cargo, data_admissao, salario
--    Obs.: id_colaborador é a chave primária técnica
CREATE TABLE IF NOT EXISTS colaboradores (
    id_colaborador INT AUTO_INCREMENT PRIMARY KEY,
    nome            VARCHAR(100) NOT NULL,
    cpf             CHAR(11)     NOT NULL UNIQUE,
    cargo           VARCHAR(80)  NOT NULL,
    data_admissao   DATE         NOT NULL,
    salario         DECIMAL(10,2) NOT NULL
);

-- 3) Inserção de pelo menos 5 registros
INSERT INTO colaboradores (nome, cpf, cargo, data_admissao, salario) VALUES
    ('Ana Souza',   '12345678901', 'Analista de RH',              '2023-03-15', 3500.00),
    ('Bruno Lima',  '98765432100', 'Assistente Administrativo',   '2024-01-10', 1800.00),
    ('Carla Mendes','15975348620', 'Desenvolvedor Back-end',      '2022-07-01', 6500.00),
    ('Diego Santos','74125896310', 'Estagiário de TI',            '2025-09-01', 1500.00),
    ('Eliane Rocha','32165498700', 'Gerente Financeiro',          '2021-11-20', 12000.00);

-- 4) SELECT que retorne todes os colaboradores com salário > 2000
SELECT *
FROM colaboradores
WHERE salario > 2000.00;

-- 5) SELECT que retorne todes os colaboradores com salário < 2000
SELECT *
FROM colaboradores
WHERE salario < 2000.00;

-- 6) Atualização de um registro (ex.: ajustar salário do Bruno Lima)
UPDATE colaboradores
SET salario = 2100.00
WHERE cpf = '98765432100';

-- (Opcional) Conferência do registro atualizado
SELECT *
FROM colaboradores
WHERE cpf = '98765432100';
