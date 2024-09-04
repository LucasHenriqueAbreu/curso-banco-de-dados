-- Criação da tabela Raças
CREATE TABLE Racas (
    RacaID INT PRIMARY KEY,
    NomeRaca VARCHAR(50)
);

-- Inserção de dados na tabela Raças
INSERT INTO Racas (RacaID, NomeRaca) VALUES
(1, 'Humano'),
(2, 'Elfo'),
(3, 'Orc'),
(4, 'Anão');

-- Criação da tabela Personagens
CREATE TABLE Personagens (
    PersonagemID INT PRIMARY KEY,
    NomePersonagem VARCHAR(50),
    Level INT,
    Poder INT,
    RacaID INT,
    FOREIGN KEY (RacaID) REFERENCES Racas(RacaID)
);

-- Inserção de dados na tabela Personagens
INSERT INTO Personagens (PersonagemID, NomePersonagem, Level, Poder, RacaID) VALUES
(1, 'Aragorn', 15, 80, 1),
(2, 'Legolas', 12, 75, 2),
(3, 'Gimli', 10, 65, 4),
(4, 'Thrall', 18, 90, 3),
(5, 'Boromir', 9, 60, 1),
(6, 'Tauriel', 11, 70, 2);

-- Criação da tabela Batalhas
CREATE TABLE Batalhas (
    BatalhaID INT PRIMARY KEY,
    LocalBatalha VARCHAR(50),
    DataBatalha DATE
);

-- Inserção de dados na tabela Batalhas
INSERT INTO Batalhas (BatalhaID, LocalBatalha, DataBatalha) VALUES
(1, 'Floresta Negra', '2024-01-01'),
(2, 'Montanha da Perdição', '2024-01-15'),
(3, 'Pântano Sombrio', '2024-02-01');

-- Criação da tabela ResultadosBatalhas
CREATE TABLE ResultadosBatalhas (
    ResultadoID INT PRIMARY KEY,
    BatalhaID INT,
    VencedorID INT,
    PerdedorID INT,
    FOREIGN KEY (BatalhaID) REFERENCES Batalhas(BatalhaID),
    FOREIGN KEY (VencedorID) REFERENCES Personagens(PersonagemID),
    FOREIGN KEY (PerdedorID) REFERENCES Personagens(PersonagemID)
);

-- Inserção de dados na tabela ResultadosBatalhas
INSERT INTO ResultadosBatalhas (ResultadoID, BatalhaID, VencedorID, PerdedorID) VALUES
(1, 1, 2, 1),
(2, 2, 4, 3),
(3, 3, 6, 5);