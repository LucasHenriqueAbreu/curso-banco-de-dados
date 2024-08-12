# Consultas Agregadas e ordenação

## 1. ORDER BY

O comando `ORDER BY` é usado para ordenar os resultados de uma consulta SQL com base em uma ou mais colunas. A ordenação pode ser feita em ordem crescente (padrão) ou decrescente.

**Sintaxe:**

```sql
SELECT coluna1, coluna2, ...
FROM tabela
ORDER BY coluna1 [ASC|DESC], coluna2 [ASC|DESC], ...;
```

- `ASC` é a ordenação crescente (opcional).
- `DESC` é a ordenação decrescente.

**Exemplo:**

Vamos supor que temos uma tabela `Clientes` com as colunas `nome`, `idade` e `cidade`.

Para ordenar os clientes por idade em ordem crescente:

```sql
SELECT nome, idade, cidade
FROM Clientes
ORDER BY idade;
```

Para ordenar os clientes por idade em ordem decrescente e, em caso de empate, por nome em ordem crescente:

```sql
SELECT nome, idade, cidade
FROM Clientes
ORDER BY idade DESC, nome ASC;
```

## 2. GROUP BY

O comando `GROUP BY` é usado para agrupar linhas que têm valores iguais em colunas especificadas. Normalmente, é usado em conjunto com funções de agregação (`COUNT`, `SUM`, `AVG`, `MAX`, `MIN`).

**Sintaxe:**

```sql
SELECT coluna1, função_agregação(coluna2)
FROM tabela
GROUP BY coluna1;
```

**Exemplo:**

Vamos supor que temos uma tabela `Vendas` com as colunas `produto`, `quantidade` e `preço`.

Para obter a quantidade total de vendas por produto:

```sql
SELECT produto, SUM(quantidade) AS total_quantidade
FROM Vendas
GROUP BY produto;
```

## 3. HAVING

O comando `HAVING` é usado para filtrar os resultados de uma consulta que utiliza `GROUP BY`. Ele funciona de maneira semelhante ao `WHERE`, mas é aplicado após a agregação dos dados.

**Sintaxe:**

```sql
SELECT coluna1, função_agregação(coluna2)
FROM tabela
GROUP BY coluna1
HAVING condição;
```

**Exemplo:**

Usando a mesma tabela `Vendas`, para obter produtos que têm uma quantidade total de vendas superior a 100 unidades:

```sql
SELECT produto, SUM(quantidade) AS total_quantidade
FROM Vendas
GROUP BY produto
HAVING SUM(quantidade) > 100;
```

## Resumo

- `ORDER BY` permite ordenar os resultados de uma consulta SQL.
- `GROUP BY` é utilizado para agrupar dados e calcular valores agregados.
- `HAVING` filtra resultados de agrupamentos, funcionando em conjunto com `GROUP BY`.
