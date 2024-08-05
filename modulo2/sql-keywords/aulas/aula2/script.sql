CREATE DATABASE MERCEARIA;
USE MERCEARIA;
CREATE TABLE Produtos (
    ID INT,
    Nome VARCHAR(50),
    Preco DECIMAL(5,2)
);

INSERT INTO Produtos (ID, Nome, Preco) VALUES (1, 'Arroz', 5.50);
INSERT INTO Produtos (ID, Nome, Preco) VALUES (2, 'Feijão', 4.80);
INSERT INTO Produtos (ID, Nome, Preco) VALUES (3, 'Açúcar', 3.20);