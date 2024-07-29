# Create Table

A declaração `CREATE TABLE` no SQL é um comando da Linguagem de Definição de Dados (DDL) usado para criar uma nova tabela no banco de dados.

## Sintaxe SQL CREATE TABLE

A sintaxe para `CREATE TABLE` no SQL é a seguinte:

```sql
CREATE TABLE nome_da_tabela (
    coluna1 tipo_de_dado,
    coluna2 tipo_de_dado,
    coluna3 tipo_de_dado,
    ....
);
```

- `nome_da_tabela` é o nome da tabela que você deseja criar.
- `coluna1, coluna2,...` são as colunas na tabela.
- `tipo_de_dado` é o tipo de dado para a coluna, como varchar, int, date, etc.

## Exemplo de SQL CREATE TABLE

Aqui está um exemplo da declaração `CREATE TABLE`:

```sql
CREATE TABLE Employees (
    ID int,
    Name varchar(255),
    Salary int,
    Department varchar(255),
    Position varchar(255)
);
```

Este comando SQL cria uma nova tabela chamada `Employees` com cinco colunas, nomeadas 'ID', 'Name', 'Salary', 'Department' e 'Position'. Os tipos de dados são int para 'ID' e 'Salary', e varchar(255) para os outros.

## SQL CREATE TABLE com NOT NULL

A restrição `NOT NULL` força uma coluna a não aceitar valores nulos. Ao criar uma nova tabela, você pode adicionar essa restrição. Aqui está um exemplo prático:

```sql
CREATE TABLE Employees (
    ID int NOT NULL,
    Name varchar(255) NOT NULL,
    Salary int,
    Department varchar(255),
    Position varchar(255)
);
```

No exemplo acima, 'ID' e 'Name' devem sempre ter um valor. Eles não podem ser deixados sem valor ou indefinidos.
