# Aula: Ordenação e Agregação em SQL

## 1. Introdução a Ordenação e Agregação
- **Objetivo**: Apresentar os conceitos de ordenação e agregação de dados em SQL, e como utilizar os comandos `ORDER BY`, `GROUP BY` e `HAVING`.
- **Explicação Teórica**:
  - **Ordenação**: Organiza os resultados de uma consulta com base em uma ou mais colunas.
  - **Agrupamento**: Agrupa linhas que têm valores iguais em colunas especificadas e aplica funções de agregação.
  - **Filtragem de Agrupamentos**: Filtra grupos de resultados após a aplicação de funções de agregação.

## 2. Comando `ORDER BY`
- **Objetivo**: Ensinar como ordenar os resultados de uma consulta SQL.
- **Explicação Teórica**:
  - O comando `ORDER BY` organiza os resultados em ordem crescente ou decrescente com base nas colunas especificadas.
- **Exemplo em Português**:
  - PT: "Vamos ordenar a lista de clientes pela idade, do mais jovem para o mais velho."
- **Execução no MySQL**:
```sql
SELECT nome, idade, cidade
FROM Clientes
ORDER BY idade;
```

- **Exemplo Adicional**:
  - PT: "Agora vamos ordenar os clientes pela idade do mais velho para o mais jovem e, em caso de empate, pelo nome em ordem alfabética."
```sql
SELECT nome, idade, cidade
FROM Clientes
ORDER BY idade DESC, nome ASC;
```

## 3. Comando `GROUP BY`
- **Objetivo**: Demonstrar como agrupar dados e calcular valores agregados.
- **Explicação Teórica**:
  - O comando `GROUP BY` agrupa linhas com valores iguais em uma ou mais colunas e permite aplicar funções de agregação como `COUNT`, `SUM`, `AVG`, etc.
- **Exemplo em Português**:
  - PT: "Vamos agrupar as vendas por produto e calcular a quantidade total vendida para cada produto."
- **Execução no MySQL**:
```sql
SELECT produto, SUM(quantidade) AS total_quantidade
FROM Vendas
GROUP BY produto;
```

## 4. Comando `HAVING`
- **Objetivo**: Explicar como filtrar grupos de resultados após a agregação.
- **Explicação Teórica**:
  - O comando `HAVING` é usado para aplicar filtros aos resultados agrupados por `GROUP BY`, similar ao `WHERE`, mas após a agregação.
- **Exemplo em Português**:
  - PT: "Vamos filtrar os produtos que têm uma quantidade total de vendas superior a 100 unidades."
- **Execução no MySQL**:
```sql
SELECT produto, SUM(quantidade) AS total_quantidade
FROM Vendas
GROUP BY produto
HAVING SUM(quantidade) > 100;
```

## 5. Considerações Importantes
- **Explicação**:
  - Ao usar `ORDER BY`, `GROUP BY` e `HAVING`, é importante entender a ordem de execução dos comandos em uma consulta SQL:
    1. **Filtragem** (`WHERE`)
    2. **Agrupamento** (`GROUP BY`)
    3. **Agregação** (funções de agregação)
    4. **Filtragem de Agrupamentos** (`HAVING`)
    5. **Ordenação** (`ORDER BY`)

## 6. Exercícios Práticos
- **Objetivo**: Praticar o uso dos comandos `ORDER BY`, `GROUP BY` e `HAVING`.
- **Exercícios**:
  1. **Ordenação**: Ordene os produtos por preço em ordem crescente.
  2. **Agrupamento**: Agrupe os clientes por cidade e conte o número de clientes em cada cidade.
  3. **Filtragem de Agrupamentos**: Encontre cidades com mais de 10 clientes.
  4. **Ordenação e Agrupamento**: Ordene os produtos pela quantidade total vendida em ordem decrescente e, em caso de empate, pelo preço em ordem crescente.

## 7. Perguntas e Respostas
- **Objetivo**: Esclarecer dúvidas e reforçar o aprendizado.

## 8. Encerramento
- **Resumo**: Revisar os principais comandos para ordenação (`ORDER BY`), agrupamento (`GROUP BY`) e filtragem de agrupamentos (`HAVING`).
- **Próximos Passos**: Explorar comandos de manipulação de dados (DML) na próxima aula.

## Materiais de Apoio
- [Exercícios Práticos](../exercicios/README.md)
