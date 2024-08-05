# SELECT

A instrução `SELECT` é usada em SQL para selecionar dados específicos de um banco de dados. Em outras palavras, ela é usada para escolher o que você deseja exibir do banco de dados. A sintaxe para a instrução `SELECT` é bastante direta:

```sql
SELECT coluna(s)
FROM tabela
WHERE condição;
```

- `coluna(s)`: Insira o(s) nome(s) da(s) coluna(s) que você deseja exibir.
- `tabela`: O nome da tabela da qual você deseja recuperar dados.
- `WHERE`: Opcional. Este é um filtro para exibir apenas as linhas onde essa condição é verdadeira.

Por exemplo, se você quiser selecionar todos os dados da tabela "Customers", sua consulta ficaria assim:

```sql
SELECT *
FROM Customers;
```

No código acima, o asterisco `*` denota "tudo". Isso recuperará todos os dados na tabela "Customers".

Se você quiser selecionar apenas as colunas "FirstName" e "LastName" da tabela "Customers", sua consulta seria:

```sql
SELECT FirstName, LastName
FROM Customers;
```

Você também pode filtrar usando a cláusula `WHERE`. Por exemplo, selecionando apenas os clientes que são da "Germany":

```sql
SELECT *
FROM Customers
WHERE Country='Germany';
```

Finalmente, você também pode ordenar os resultados usando a palavra-chave `ORDER BY`:

```sql
SELECT *
FROM Customers
ORDER BY Country;
```

Isso ordenará a saída em ordem crescente pela coluna Country. Para ordenar em ordem decrescente, você adicionaria a palavra-chave `DESC`:

```sql
SELECT *
FROM Customers
ORDER BY Country DESC;
```

Esses são os conceitos básicos da instrução `SELECT` em SQL, que é uma parte vital do trabalho com bancos de dados.

[Página Anterior](../README.md) - [Próxima Página](../insert/README.md)