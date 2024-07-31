# Palavras-chave SQL

SQL utiliza um conjunto de palavras-chave padrão que são essenciais para interagir com bancos de dados. As palavras-chave em SQL fornecem instruções sobre qual ação deve ser realizada.

Aqui estão algumas das principais palavras-chave SQL:

**SELECT**: Esta palavra-chave recupera dados de um banco de dados. Por exemplo,

```sql
SELECT * FROM Customers;
```

Na instrução acima, `*` indica que todos os registros devem ser recuperados da tabela `Customers`.

**FROM**: Usada em conjunto com `SELECT` para especificar a tabela da qual os dados devem ser obtidos.

**WHERE**: Usada para filtrar registros. Incorporando uma cláusula WHERE, você pode especificar condições que devem ser atendidas. Por exemplo,

```sql
SELECT * FROM Customers WHERE Country='Germany';
```

**INSERT INTO**: Este comando é usado para inserir novos dados em um banco de dados.

```sql
INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal','Tom B. Erichsen','Skagen 21','Stavanger','4006','Norway');
```

**UPDATE**: Esta palavra-chave atualiza dados existentes em uma tabela. Por exemplo,

```sql
UPDATE Customers SET ContactName='Alfred Schmidt', City='Frankfurt' WHERE CustomerID=1;
```

**DELETE**: Este comando remove um ou mais registros de uma tabela. Por exemplo,

```sql
DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';
```

**CREATE DATABASE**: Como o nome sugere, esta palavra-chave cria um novo banco de dados.

```sql
CREATE DATABASE mydatabase;
```

**ALTER DATABASE**, **DROP DATABASE**, **CREATE TABLE**, **ALTER TABLE**, **DROP TABLE**: Essas palavras-chave são usadas para modificar bancos de dados e tabelas.

Lembre-se de que SQL não diferencia maiúsculas de minúsculas, o que significa que as palavras-chave podem ser escritas em minúsculas. A convenção é escrevê-las em LETRAS MAIÚSCULAS para melhor legibilidade. Existem muitas outras palavras-chave em SQL, mas estas são algumas das mais comuns.

Saiba mais sobre SQL nos seguintes recursos:

- [@article@SQL Tutorial - Mode](https://mode.com/sql-tutorial/)
- [@article@SQL Tutorial](https://www.sqltutorial.org/)
- [@article@SQL Tutorial - W3Schools](https://www.w3schools.com/sql/default.asp)


[Página Anterior](../mysql/README.md) - [Próxima Página](../data-types/README.md)