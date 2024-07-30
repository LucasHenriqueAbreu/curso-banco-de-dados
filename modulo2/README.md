# Sintaxe Básica de SQL

SQL, ou Structured Query Language (Linguagem de Consulta Estruturada), utiliza um conjunto específico de comandos para interagir com um banco de dados. Inclui o uso de instruções semelhantes a palavras-chave para realizar várias tarefas, como criar, excluir ou modificar tabelas, recuperar, inserir ou modificar dados.

A instrução `SELECT` é usada para recuperar dados de um banco de dados. Os dados retornados são armazenados em uma tabela de resultados, chamada de conjunto de resultados.

```sql
SELECT column1, column2 FROM table_name;
```

A instrução `INSERT INTO` é usada para inserir novas linhas de dados em uma tabela.

```sql
INSERT INTO table_name (column1, column2, column3)
VALUES (value1, value2, value3);
```

A instrução `UPDATE` é usada para modificar registros existentes em uma tabela.

```sql
UPDATE table_name
SET column1 = value1, column2 = value2
WHERE condition;
```

A instrução `DELETE` é usada para remover linhas de uma tabela.

```sql
DELETE FROM table_name WHERE condition;
```

A instrução `CREATE TABLE` é usada para criar uma nova tabela em um banco de dados.

```sql
CREATE TABLE table_name (
    column1 datatype constraints,
    column2 datatype constraints,
    column3 datatype constraints
);
```

A instrução `ALTER TABLE` é usada para adicionar, excluir/remover ou modificar colunas em uma tabela existente. Também é usada para adicionar e remover restrições na tabela existente.

```sql
-- Para adicionar uma coluna
ALTER TABLE table_name
ADD column_name datatype;

-- Para excluir/remover uma coluna
ALTER TABLE table_name
DROP COLUMN column_name;

-- Para modificar uma coluna existente
ALTER TABLE table_name
MODIFY COLUMN column_name datatype;
```

A instrução `DROP TABLE` é usada para remover uma tabela existente em um banco de dados.

```sql
DROP TABLE table_name;
```

Saiba mais sobre SQL nos seguintes recursos:

- [@article@SQL Tutorial - Mode](https://mode.com/sql-tutorial/)
- [@article@SQL Tutorial](https://www.sqltutorial.org/)
- [@article@SQL Tutorial - W3Schools](https://www.w3schools.com/sql/default.asp)



# Sumário
- [Instalando o MySQL](./mysql/README.md)
- [Palavras-chave SQL](./sql-keywords/README.md)
- [Tipos de Dados](./data-types/README.md)
- [Operadores](./operators/README.md)
  - [SELECT](./operators/select/README.md)
  - [INSERT](./operators/insert/README.md)
  - [UPDATE](./operators/update/README.md)
  - [DELETE](./operators/delete/README.md)