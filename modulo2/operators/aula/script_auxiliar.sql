-- 1. Criação do Banco de Dados
CREATE DATABASE escola;

-- Use o banco de dados criado
USE escola;

-- 2. Criação de Tabelas
-- Tabela de estudantes
CREATE TABLE estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    idade INT,
    nota DECIMAL(4,2)
);

-- Tabela de professores
CREATE TABLE professores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    salario DECIMAL(10,2),
    idade INT
);

-- Tabela de produtos (para exemplo de operadores aritméticos)
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    preco DECIMAL(10,2)
);

-- 3. Inserção de Dados
-- Inserir dados na tabela estudantes
INSERT INTO estudantes (nome, idade, nota) VALUES ('Alice', 17, 85.5);
INSERT INTO estudantes (nome, idade, nota) VALUES ('Bob', 19, 90.0);
INSERT INTO estudantes (nome, idade, nota) VALUES ('Carol', 18, 92.3);

-- Inserir dados na tabela professores
INSERT INTO professores (nome, salario, idade) VALUES ('prof. silva', 55000.00, 45);
INSERT INTO professores (nome, salario, idade) VALUES ('prof. souza', 62000.00, 38);
INSERT INTO professores (nome, salario, idade) VALUES ('prof. oliveira', 49000.00, 29);

-- Inserir dados na tabela produtos
INSERT INTO produtos (nome, preco) VALUES ('livro', 35.50);
INSERT INTO produtos (nome, preco) VALUES ('caneta', 2.50);
INSERT INTO produtos (nome, preco) VALUES ('caderno', 15.75);

