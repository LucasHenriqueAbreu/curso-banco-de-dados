---
marp: true
title: O que são Bancos de Dados Relacionais?
paginate: true
theme: default
---

# O que são Bancos de Dados Relacionais?

Um **banco de dados relacional** é um tipo de banco de dados que armazena e organiza dados de maneira estruturada. Ele usa uma estrutura que permite que os dados sejam identificados e acessados em relação a outros dados no banco de dados. Os dados em um banco de dados relacional são armazenados em várias tabelas de dados, cada uma das quais tem uma chave única que identifica cada linha.

---

Os bancos de dados relacionais são compostos por um conjunto de tabelas com dados que se enquadram em uma categoria predefinida. Cada tabela possui pelo menos uma categoria de dados em uma coluna, e cada linha contém uma determinada instância de dados para as categorias definidas nas colunas.

Por exemplo, considere uma tabela 'Funcionários':

| EmployeeId | FirstName | LastName | Email                 |
|------------|-----------|----------|-----------------------|
| 1          | John      | Doe      | john.doe@example.com  |
| 2          | Jane      | Doe      | jane.doe@example.com  |
| 3          | Bob       | Smith    | bob.smith@example.com |

---

## Relacionamentos

O termo "banco de dados relacional" vem do conceito de relação - um conjunto de tuplas que o banco de dados organiza em linhas e colunas. Cada linha em uma tabela representa um relacionamento entre um conjunto de valores.

Os bancos de dados relacionais usam `chaves` para criar links entre tabelas. Uma `chave primária` é um identificador único para uma linha de dados. Uma `chave estrangeira` é uma coluna ou combinação de colunas usada para estabelecer e reforçar um link entre os dados em duas tabelas.

---

Considere uma tabela adicional 'Pedidos':

| OrderId | EmployeeId | Product  |
|---------|------------|----------|
| 1       | 3          | Apples   |
| 2       | 1          | Bananas  |
| 3       | 2          | Cherries |

Na tabela 'Pedidos', 'EmployeeId' serve como chave estrangeira, criando uma relação entre 'Pedidos' e 'Funcionários'. Isso permite consultas que envolvem dados em ambas as tabelas, como "Encontre todos os pedidos feitos por John Doe".

---

```sql
SELECT Orders.OrderId, Orders.Product, Employees.FirstName, Employees.LastName
FROM Orders
INNER JOIN Employees ON Orders.EmployeeId = Employees.EmployeeId;
```

O código SQL acima é um exemplo de como recuperar dados de um banco de dados relacional usando uma cláusula JOIN para combinar linhas de duas ou mais tabelas. No geral, os bancos de dados relacionais fornecem um mecanismo poderoso para definir relacionamentos dentro dos dados e permitir a recuperação eficiente de dados.
