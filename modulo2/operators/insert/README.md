# INSERT

A instrução `INSERT` em SQL é usada para adicionar novas linhas de dados a uma tabela no banco de dados. Existem três formas da instrução `INSERT`: `INSERT INTO` valores, `INSERT INTO` set, e `INSERT INTO` select.

## `INSERT INTO` valores

A sintaxe básica para `INSERT INTO` valores é:

```sql
INSERT INTO nome_da_tabela (coluna1, coluna2, coluna3, ...)
VALUES (valor1, valor2, valor3, ...);
```

Esta forma da instrução `INSERT` especifica tanto os nomes das colunas quanto os valores a serem inseridos.

## `INSERT INTO` set

Nesta forma, você pode inserir dados usando a palavra-chave `SET`. Aqui, você especifica cada coluna na qual deseja inserir dados e, em seguida, os dados para essa coluna.

```sql
INSERT INTO nome_da_tabela 
SET coluna1 = valor1, coluna2 = valor2, ...;
```

## `INSERT INTO` select

A instrução `INSERT INTO SELECT` é usada para copiar dados de uma tabela e inseri-los em outra tabela. Ou, para inserir dados em colunas específicas a partir de outra tabela.

```sql
INSERT INTO nome_da_tabela1 (coluna1, coluna2, coluna3, ...)
SELECT coluna1, coluna2, coluna3, ...
FROM nome_da_tabela2
WHERE condição;
```

Em todos os casos, se você estiver inserindo dados em uma tabela onde algumas colunas têm valores padrão, você não precisa especificar essas colunas na sua instrução `INSERT INTO`.

Nota: Tenha cuidado ao inserir dados em um banco de dados, pois SQL não possui um comando de confirmação. Portanto, uma vez que você execute a instrução de inserção, os registros são inseridos e você não pode desfazer a operação.

[Página Anterior](../insert/README.md) - [Próxima Página](../update/README.md)