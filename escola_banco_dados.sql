
-- ############################################################
-- Script: escola_banco_dados.sql
-- Objetivo: Criar um banco de dados e tabela de estudantes
--           Inserir registros, realizar consultas e atualizar
--           um registro, tudo em um único arquivo .SQL.
-- Banco alvo: MySQL/MariaDB
-- ############################################################

-- 1) Criação do banco de dados e seleção do banco
CREATE DATABASE IF NOT EXISTS escola_registro;
USE escola_registro;

-- 2) Criação da tabela de estudantes com 5 atributos relevantes
--    Atributos: nome, matricula, turma, data_nascimento, nota
--    Obs.: id_estudante é a chave primária técnica
CREATE TABLE IF NOT EXISTS estudantes (
    id_estudante     INT AUTO_INCREMENT PRIMARY KEY,
    nome             VARCHAR(120) NOT NULL,
    matricula        VARCHAR(20)  NOT NULL UNIQUE,
    turma            VARCHAR(20)  NOT NULL,
    data_nascimento  DATE         NOT NULL,
    nota             DECIMAL(4,2) NOT NULL
);

-- 3) Inserção de pelo menos 8 registros
INSERT INTO estudantes (nome, matricula, turma, data_nascimento, nota) VALUES
    ('Alice Pereira',    'MAT-202501', '1A', '2010-04-12', 8.50),
    ('Bruno Carvalho',   'MAT-202502', '1A', '2009-11-23', 6.90),
    ('Camila Santos',    'MAT-202503', '1B', '2010-01-05', 9.20),
    ('Diego Almeida',    'MAT-202504', '1B', '2009-07-19', 7.30),
    ('Elaine Rocha',     'MAT-202505', '2A', '2011-02-28', 5.80),
    ('Fernando Lima',    'MAT-202506', '2A', '2010-09-03', 7.00),
    ('Gabriela Nunes',   'MAT-202507', '2B', '2011-05-17', 4.50),
    ('Henrique Souza',   'MAT-202508', '2B', '2009-12-30', 8.00);

-- 4) SELECT que retorne todes o/a(s) estudantes com nota > 7.0
SELECT *
FROM estudantes
WHERE nota > 7.00;

-- 5) SELECT que retorne todes o/a(s) estudantes com nota < 7.0
SELECT *
FROM estudantes
WHERE nota < 7.00;

-- 6) Atualização de um registro (ex.: ajustar nota do Fernando Lima)
UPDATE estudantes
SET nota = 7.60
WHERE matricula = 'MAT-202506';

-- (Opcional) Conferência do registro atualizado
SELECT *
FROM estudantes
WHERE matricula = 'MAT-202506';
