-- Criação da tabela Clientes
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(255)
);

-- Criação da tabela Pedidos
CREATE TABLE Pedidos (
    OrderID INT PRIMARY KEY,
    ClienteID INT,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

-- Inserção de dados nas tabelas Clientes e Pedidos
INSERT INTO Clientes (ClienteID, Nome) VALUES
(1, 'João Silva'),
(2, 'Maria Souza'),
(3, 'Carlos Almeida');

INSERT INTO Pedidos (OrderID, ClienteID) VALUES
(101, 1),
(102, 2),
(103, 1),
(104, NULL); -- Pedido sem cliente

-- Criação da tabela Funcionarios
CREATE TABLE Funcionarios (
    EmployeeID INT PRIMARY KEY,
    Nome VARCHAR(255),
    ManagerID INT
);

-- Inserção de dados na tabela Funcionarios
INSERT INTO Funcionarios (EmployeeID, Nome, ManagerID) VALUES
(1, 'João Silva', NULL),  -- João é o gerente
(2, 'Maria Souza', 1),
(3, 'Carlos Almeida', 1);

-- Criação da tabela Produtos
CREATE TABLE Produtos (
    ProdutoID INT PRIMARY KEY,
    Nome VARCHAR(255)
);

-- Criação da tabela Categorias
CREATE TABLE Categorias (
    CategoriaID INT PRIMARY KEY,
    Nome VARCHAR(255)
);

-- Inserção de dados nas tabelas Produtos e Categorias
INSERT INTO Produtos (ProdutoID, Nome) VALUES
(1, 'Caneta'),
(2, 'Caderno');

INSERT INTO Categorias (CategoriaID, Nome) VALUES
(1, 'Escritório'),
(2, 'Escolar');