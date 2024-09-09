-- Criação da tabela Raças
CREATE TABLE racas (
    racaid INT PRIMARY KEY,
    nomeraca VARCHAR(50)
);

-- Inserção de dados na tabela Raças
INSERT INTO racas (racaid, nomeraca) VALUES
(1, 'Humano'),
(2, 'Elfo'),
(3, 'Orc'),
(4, 'Anão');

-- Criação da tabela Personagens
CREATE TABLE personagens (
    personagemid INT PRIMARY KEY,
    nomepersonagem VARCHAR(50),
    level INT,
    poder INT,
    racaid INT,
    FOREIGN KEY (racaid) REFERENCES racas(racaid)
);

-- Inserção de dados na tabela Personagens
INSERT INTO personagens (personagemid, nomepersonagem, level, poder, racaid) VALUES
(1, 'Aragorn', 15, 80, 1),
(2, 'Legolas', 12, 75, 2),
(3, 'Gimli', 10, 65, 4),
(4, 'Thrall', 18, 90, 3),
(5, 'Boromir', 9, 60, 1),
(6, 'Tauriel', 11, 70, 2);

-- Criação da tabela Batalhas
CREATE TABLE batalhas (
    batalhaid INT PRIMARY KEY,
    localbatalha VARCHAR(50),
    databatalha DATE
);

-- Inserção de dados na tabela Batalhas
INSERT INTO batalhas (batalhaid, localbatalha, databatalha) VALUES
(1, 'Floresta Negra', '2024-01-01'),
(2, 'Montanha da Perdição', '2024-01-15'),
(3, 'Pântano Sombrio', '2024-02-01');

-- Criação da tabela ResultadosBatalhas
CREATE TABLE resultadosbatalhas (
    resultadoid INT PRIMARY KEY,
    batalhaid INT,
    vencedorid INT,
    perdedorid INT,
    FOREIGN KEY (batalhaid) REFERENCES batalhas(batalhaid),
    FOREIGN KEY (vencedorid) REFERENCES personagens(personagemid),
    FOREIGN KEY (perdedorid) REFERENCES personagens(personagemid)
);

-- Inserção de dados na tabela ResultadosBatalhas
INSERT INTO resultadosbatalhas (resultadoid, batalhaid, vencedorid, perdedorid) VALUES
(1, 1, 2, 1),  -- Legolas venceu Aragorn
(2, 2, 4, 3),  -- Thrall venceu Gimli
(3, 3, 6, 5);  -- Tauriel venceu Boromir