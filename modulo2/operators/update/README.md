# UPDATE

A instrução SQL `UPDATE` é usada para modificar os dados existentes em um banco de dados. Esta instrução é muito útil quando você precisa alterar os valores atribuídos a campos específicos em uma linha ou conjunto de linhas existentes.

A sintaxe geral para a instrução `UPDATE` é a seguinte:

```sql
UPDATE nome_da_tabela
SET coluna1 = valor1, coluna2 = valor2, ...
WHERE condição;
```

- `nome_da_tabela`: O nome da tabela onde a atualização será realizada.
- `SET`: Esta cláusula especifica o nome da coluna e o novo valor que deve ser atualizado.
- `coluna1, coluna2, ...`: Os nomes das colunas na tabela.
- `valor1, valor2, ...`: Os novos valores que você deseja registrar no banco de dados.
- `WHERE`: Esta cláusula especifica as condições que identificam qual(is) linha(s) atualizar.

## Exemplo de Uso

Aqui está um exemplo que pode fornecer mais clareza. Para uma tabela imaginária `Employees`:

| EmployeeID | Name    | Position | Salary |
|------------|---------|----------|--------|
| 1          | Jane    | Manager  | 50000  |
| 2          | John    | Clerk    | 30000  |
| 3          | Bob     | Engineer | 40000  |

Se você quiser aumentar o salário de Bob em $5000, você usaria:

```sql
UPDATE Employees
SET Salary = 45000
WHERE EmployeeID = 3;
```

Isso alteraria permanentemente os dados na tabela `Employees`:

| EmployeeID | Name    | Position | Salary |
|------------|---------|----------|--------|
| 1          | Jane    | Manager  | 50000  |
| 2          | John    | Clerk    | 30000  |
| 3          | Bob     | Engineer | 45000  |

Sempre tenha cuidado com a instrução `UPDATE`; se você esquecer a cláusula `WHERE`, você atualizará todas as linhas na tabela.
