
# Aula: Ordenação e Agregação em SQL

# Script de Criação do Banco de Dados

```sql
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
```

## 1. Introdução a Ordenação e Agregação
- **Objetivo**: Apresentar os conceitos de ordenação e agregação de dados em SQL, e como utilizar os comandos `ORDER BY`, `GROUP BY` e `HAVING`.
- **Explicação Teórica**:
  - **Ordenação**: Organiza os resultados de uma consulta com base em uma ou mais colunas.
  - **Agrupamento**: Agrupa linhas que têm valores iguais em colunas especificadas e aplica funções de agregação.
  - **Filtragem de Agrupamentos**: Filtra grupos de resultados após a aplicação de funções de agregação.

---

## 2. Comando `ORDER BY`
- **Objetivo**: Ensinar como ordenar os resultados de uma consulta SQL.
- **Explicação Teórica**:
  - O comando `ORDER BY` organiza os resultados em ordem crescente ou decrescente com base nas colunas especificadas.
- **Exemplo em Português**:
  - PT: "Vamos ordenar a lista de Pokémons pelo ataque, do mais fraco para o mais forte."
- **Execução no MySQL**:
```sql
SELECT nome, ataque, defesa, destreza
FROM Pokemons
ORDER BY ataque;
```

---

- **Exemplo Adicional**:
  - PT: "Agora vamos ordenar os Pokémons pelo ataque do mais forte para o mais fraco e, em caso de empate, pela defesa em ordem decrescente."
```sql
SELECT nome, ataque, defesa, destreza
FROM Pokemons
ORDER BY ataque DESC, defesa DESC;
```

---

## 3. Comando `GROUP BY`
- **Objetivo**: Demonstrar como agrupar dados e calcular valores agregados.
- **Explicação Teórica**:
  - O comando `GROUP BY` agrupa linhas com valores iguais em uma ou mais colunas e permite aplicar funções de agregação como `COUNT`, `SUM`, `AVG`, etc.
- **Exemplo em Português**:
  - PT: "Vamos agrupar os Pokémons por tipo e calcular a média de ataque para cada tipo."
- **Execução no MySQL**:
```sql
SELECT tipo, AVG(ataque) AS media_ataque
FROM Pokemons
GROUP BY tipo;
```

---

## 4. Comando `HAVING`
- **Objetivo**: Explicar como filtrar grupos de resultados após a agregação.
- **Explicação Teórica**:
  - O comando `HAVING` é usado para aplicar filtros aos resultados agrupados por `GROUP BY`, similar ao `WHERE`, mas após a agregação.
- **Exemplo em Português**:
  - PT: "Vamos filtrar os tipos de Pokémons que têm uma média de ataque superior a 70."
- **Execução no MySQL**:
```sql
SELECT tipo, AVG(ataque) AS media_ataque
FROM Pokemons
GROUP BY tipo
HAVING AVG(ataque) > 70;
```

---

## 5. Considerações Importantes
- **Explicação**:
  - Ao usar `ORDER BY`, `GROUP BY` e `HAVING`, é importante entender a ordem de execução dos comandos em uma consulta SQL:
    1. **Filtragem** (`WHERE`)
    2. **Agrupamento** (`GROUP BY`)
    3. **Agregação** (funções de agregação)
    4. **Filtragem de Agrupamentos** (`HAVING`)
    5. **Ordenação** (`ORDER BY`)

---

## 6. Exercícios Práticos
- **Objetivo**: Praticar o uso dos comandos `ORDER BY`, `GROUP BY` e `HAVING`.
- **Exercícios**:
  1. **Ordenação**: Ordene os Pokémons por defesa em ordem crescente.
  2. **Agrupamento**: Agrupe os Pokémons por tipo e conte quantos Pokémons existem em cada tipo.
  3. **Filtragem de Agrupamentos**: Encontre tipos de Pokémons com mais de 5 Pokémons.
  4. **Ordenação e Agrupamento**: Ordene os Pokémons pela destreza em ordem decrescente e, em caso de empate, pelo nome em ordem crescente.

---

## 7. Perguntas e Respostas
- **Objetivo**: Esclarecer dúvidas e reforçar o aprendizado.

---

## 8. Encerramento
- **Resumo**: Revisar os principais comandos para ordenação (`ORDER BY`), agrupamento (`GROUP BY`) e filtragem de agrupamentos (`HAVING`).
- **Próximos Passos**: Explorar comandos de manipulação de dados (DML) na próxima aula.

---

## Materiais de Apoio
- [Exercícios Práticos](../exercicios/README.md)

---

