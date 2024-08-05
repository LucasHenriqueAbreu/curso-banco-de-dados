# Tipos de Dados

Os tipos de dados SQL definem o tipo de dados que podem ser armazenados na coluna de uma tabela de banco de dados. Dependendo do DBMS, os nomes dos tipos de dados podem variar ligeiramente. Aqui estão os tipos gerais:

## INT

`INT` é usado para números inteiros. Por exemplo:

```sql
CREATE TABLE Employees (
    ID INT,
    Name VARCHAR(30)
);
```

## DECIMAL

`DECIMAL` é usado para números decimais e fracionários. Por exemplo:

```sql
CREATE TABLE Items (
    ID INT,
    Price DECIMAL(5,2)
);
```

## CHAR

`CHAR` é usado para strings de comprimento fixo. Por exemplo:

```sql
CREATE TABLE Employees (
    ID INT,
    Initial CHAR(1)
);
```

## VARCHAR

`VARCHAR` é usado para strings de comprimento variável. Por exemplo:

```sql
CREATE TABLE Employees (
    ID INT,
    Name VARCHAR(30)
);
```

## DATE

`DATE` é usado para datas no formato (`YYYY-MM-DD`).

```sql
CREATE TABLE Employees (
    ID INT,
    BirthDate DATE
);
```

## DATETIME

`DATETIME` é usado para valores de data e hora no formato (`YYYY-MM-DD HH:MI:SS`).

```sql
CREATE TABLE Orders (
    ID INT,
    OrderDate DATETIME
);
```

## BINARY

`BINARY` é usado para strings binárias.

## BOOLEAN

`BOOLEAN` é usado para valores booleanos (`TRUE` ou `FALSE`).

**Lembre-se**, a sintaxe específica para criar tabelas e definir tipos de dados de colunas pode variar ligeiramente dependendo do banco de dados SQL que você está usando (MySQL, PostgreSQL, SQL Server, SQLite, Oracle, etc.), mas o conceito geral e a organização dos tipos de dados são cross-platform.

Recursos da aula:
- [Script da aula](./aula/README.md)
- [Exercícios](./exercicios/README.md)


[Página Anterior](../data-types/README.md) - [Próxima Página](../operators/README.md)