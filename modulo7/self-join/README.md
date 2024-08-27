# Self Join

Um `SELF JOIN` é uma operação SQL padrão onde uma tabela é unida a ela mesma. Isso pode parecer contra-intuitivo, mas é bastante útil em cenários onde operações de comparação precisam ser feitas dentro de uma tabela. Essencialmente, ele é usado para combinar linhas com outras linhas na mesma tabela quando há uma correspondência baseada na condição fornecida.

É importante notar que, como é uma operação de join na mesma tabela, alias(es) para a(s) tabela(s) devem ser usados para evitar confusão durante a operação de join.

## Sintaxe de um Self Join

Aqui está a sintaxe básica para uma instrução `SELF JOIN`:

/```sql
SELECT a.column_name, b.column_name
FROM table_name AS a, table_name AS b
WHERE a.common_field = b.common_field;
/```

Nesta consulta:

- `table_name`: é o nome da tabela que será unida a ela mesma.
- `a` e `b`: são aliases diferentes para a mesma tabela.
- `column_name`: especifica as colunas que devem ser retornadas como resultado da instrução SQL `SELF JOIN`.
- `WHERE a.common_field = b.common_field`: é a condição para o join.

## Exemplo de um Self Join

Vamos considerar uma tabela `EMPLOYEES` com a seguinte estrutura:

| EmployeeID | Name  | ManagerID |
|------------|-------|-----------|
| 1          | Sam   | NULL      |
| 2          | Alex  | 1         |
| 3          | John  | 1         |
| 4          | Sophia| 2         |
| 5          | Emma  | 2         |

Se você quiser descobrir todos os funcionários e quem é o gerente deles, pode fazer isso usando um `SELF JOIN`:

/```sql
SELECT a.Name AS Employee, b.Name AS Manager
FROM EMPLOYEES a, EMPLOYEES b
WHERE a.ManagerID = b.EmployeeID;
/```

Essa consulta retornará o nome de cada funcionário junto com o nome do respectivo gerente.
