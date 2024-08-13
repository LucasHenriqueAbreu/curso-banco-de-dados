---
marp: true
title: Plano de Ensino – Introdução a Banco de Dados
paginate: true
theme: default
---

# Aula: Ordenação e Agregação em SQL

## 1. Introdução a Ordenação e Agregação
  - **Ordenação**: Organiza os resultados de uma consulta com base em uma ou mais colunas.
  - **Agrupamento**: Agrupa linhas que têm valores iguais em colunas especificadas e aplica funções de agregação.
  - **Filtragem de Agrupamentos**: Filtra grupos de resultados após a aplicação de funções de agregação.

---

## 2. Comando `ORDER BY`
  - O comando `ORDER BY` organiza os resultados em ordem crescente ou decrescente com base nas colunas especificadas.Ʋ
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
- **Exercícios**:
  1. **Ordenação**: Ordene os Pokémons por defesa em ordem crescente.
  2. **Agrupamento**: Agrupe os Pokémons por tipo e conte quantos Pokémons existem em cada tipo.
  3. **Filtragem de Agrupamentos**: Encontre tipos de Pokémons com mais de 5 Pokémons.
  4. **Ordenação e Agrupamento**: Ordene os Pokémons pela destreza em ordem decrescente e, em caso de empate, pelo nome em ordem crescente.

---

## 7. Perguntas e Respostas

---

## 8. Encerramento
- **Resumo**: Revisar os principais comandos para ordenação (`ORDER BY`), agrupamento (`GROUP BY`) e filtragem de agrupamentos (`HAVING`).
- **Próximos Passos**: Explorar comandos de manipulação de dados (DML) na próxima aula.

---

## Materiais de Apoio
- [Exercícios Práticos](../exercicios/README.md)

---
