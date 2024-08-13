CREATE DATABASE PokemonDB;

USE PokemonDB;

CREATE TABLE Pokemons (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    tipo VARCHAR(20),
    ataque INT,
    defesa INT,
    destreza INT
);

INSERT INTO Pokemons (id, nome, tipo, ataque, defesa, destreza) VALUES
(1, 'Bulbasaur', 'Grama', 49, 49, 45),
(2, 'Ivysaur', 'Grama', 62, 63, 60),
(3, 'Venusaur', 'Grama', 82, 83, 80),
(4, 'Charmander', 'Fogo', 52, 43, 65),
(5, 'Charmeleon', 'Fogo', 64, 58, 80),
(6, 'Charizard', 'Fogo', 84, 78, 100),
(7, 'Squirtle', 'Água', 48, 65, 43),
(8, 'Wartortle', 'Água', 63, 80, 58),
(9, 'Blastoise', 'Água', 83, 100, 78),
(10, 'Pikachu', 'Elétrico', 55, 40, 90),
(11, 'Raichu', 'Elétrico', 90, 55, 110),
(12, 'Jigglypuff', 'Normal', 45, 20, 20),
(13, 'Meowth', 'Normal', 45, 35, 90),
(14, 'Psyduck', 'Água', 52, 48, 55),
(15, 'Machop', 'Lutador', 80, 50, 35),
(16, 'Geodude', 'Pedra', 80, 100, 20),
(17, 'Gengar', 'Fantasma', 65, 60, 110),
(18, 'Eevee', 'Normal', 55, 50, 55),
(19, 'Snorlax', 'Normal', 110, 65, 30),
(20, 'Mewtwo', 'Psíquico', 110, 90, 130);