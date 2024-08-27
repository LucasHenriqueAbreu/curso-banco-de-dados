# RIGHT JOIN

A palavra-chave `RIGHT JOIN` retorna todos os registros da tabela à direita (tabela2) e os registros correspondentes da tabela à esquerda (tabela1). Se não houver correspondência, o resultado é `NULL` no lado esquerdo.

## Sintaxe

Abaixo está a sintaxe comum usada para escrever um `RIGHT JOIN`:

```sql
SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;
```

## Exemplo

Considere duas tabelas:

**Tabela "Orders":**

| OrderID | CustomerID | OrderDate  |
|--|--|--|
| 1 | 3 | 2017/11/11  |
| 2 | 1 | 2017/10/23  |
| 3 | 2 | 2017/9/15  |
| 4 | 4 | 2017/9/03  |

**Tabela "Customers":**

| CustomerID | CustomerName | ContactName | Country |
|--|--|--|--|
| 1 | Alfreds Futterkiste | Maria Anders | Germany |
| 2 | Ana Trujillo Emparedados y helados | Ana Trujillo | Mexico |
| 3 | Antonio Moreno Taquería | Antonio Moreno | Mexico |
| 5 | Berglunds snabbköp | Christina Berglund | Sweden |

Agora, queremos selecionar todos os clientes e quaisquer registros correspondentes na tabela de pedidos. Se não houver correspondência, o resultado é `NULL` na tabela de pedidos:

```sql
SELECT 
  Customers.CustomerName, 
  Orders.OrderID
FROM 
  Orders
RIGHT JOIN 
  Customers 
ON 
  Orders.CustomerID = Customers.CustomerID;
```

**Resultado:**

| CustomerName | OrderID |
|--|--|
| Alfreds Futterkiste  | 2 |
| Ana Trujillo Emparedados y helados  | 3 |
| Antonio Moreno Taquería  | 1 |
| Berglunds snabbköp  | NULL |

Como você pode ver, a palavra-chave `RIGHT JOIN` retornou todos os registros da tabela Customers e todos os registros correspondentes da tabela Orders. Para os clientes que não têm pedidos (como "Berglunds snabbköp"), o resultado é `NULL`.
