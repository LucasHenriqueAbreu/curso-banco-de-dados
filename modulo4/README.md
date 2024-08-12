
# Linguagem de Manipulação de Dados (DML)

A Linguagem de Manipulação de Dados (DML) é um subconjunto do SQL utilizado para inserir, atualizar, excluir e recuperar dados de um banco de dados. Ela é fundamental para interagir com os dados armazenados nas tabelas. Os comandos principais de DML incluem `SELECT`, `INSERT`, `UPDATE` e `DELETE`.

## 1. `SELECT`

O comando `SELECT` é usado para recuperar dados de uma ou mais tabelas em um banco de dados. Ele permite que você selecione colunas específicas e aplique filtros, ordenações e agrupamentos nos resultados.

```sql
SELECT coluna1, coluna2, ...
FROM nome_da_tabela
WHERE condição
ORDER BY coluna1 ASC|DESC
GROUP BY coluna1
HAVING condição;
```

### 1.1 `FROM`

O `FROM` especifica a tabela de onde os dados serão recuperados. Você pode selecionar dados de uma ou várias tabelas usando cláusulas como `JOIN`.

```sql
SELECT coluna1, coluna2
FROM nome_da_tabela;
```

### 1.2 `WHERE`

A cláusula `WHERE` é usada para filtrar os registros que atendem a uma condição específica. Apenas os registros que satisfazem a condição serão retornados.

```sql
SELECT coluna1, coluna2
FROM nome_da_tabela
WHERE condição;
```

### 1.3 `ORDER BY`

A cláusula `ORDER BY` é usada para ordenar os resultados de uma consulta em ordem crescente (`ASC`) ou decrescente (`DESC`).

```sql
SELECT coluna1, coluna2
FROM nome_da_tabela
ORDER BY coluna1 ASC;
```

### 1.4 `GROUP BY`

A cláusula `GROUP BY` agrupa os resultados por uma ou mais colunas, permitindo que funções agregadas como `COUNT`, `SUM`, `AVG`, `MIN`, e `MAX` sejam aplicadas a cada grupo.

```sql
SELECT coluna1, COUNT(*)
FROM nome_da_tabela
GROUP BY coluna1;
```

### 1.5 `HAVING`

A cláusula `HAVING` é semelhante à `WHERE`, mas é aplicada após a agregação dos dados, ou seja, após a cláusula `GROUP BY`.

```sql
SELECT coluna1, COUNT(*)
FROM nome_da_tabela
GROUP BY coluna1
HAVING COUNT(*) > 1;
```

### 1.6 `JOINS`

Os `JOINS` são usados para combinar registros de duas ou mais tabelas com base em uma condição relacionada. Os principais tipos de `JOIN` incluem:

- `INNER JOIN`: Retorna registros que têm correspondência em ambas as tabelas.
- `LEFT JOIN`: Retorna todos os registros da tabela à esquerda e os registros correspondentes da tabela à direita. Se não houver correspondência, os resultados da tabela à direita serão nulos.
- `RIGHT JOIN`: Retorna todos os registros da tabela à direita e os registros correspondentes da tabela à esquerda. Se não houver correspondência, os resultados da tabela à esquerda serão nulos.
- `FULL OUTER JOIN`: Retorna registros quando há correspondência em uma das tabelas. Os registros que não têm correspondência em ambas as tabelas serão nulos.

```sql
SELECT A.coluna1, B.coluna2
FROM tabelaA A
INNER JOIN tabelaB B ON A.coluna_comum = B.coluna_comum;
```

