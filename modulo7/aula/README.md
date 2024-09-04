# Aula: Consultas SQL com JOIN

[Banco de dados para exemplos](./banco_exemplo.sql)

## 1. Introdução aos JOINs em SQL
  - **Objetivo**: Apresentar os diferentes tipos de `JOIN` em SQL e como eles são usados para combinar dados de várias tabelas.
  - **Tipos de JOIN**:
    - `INNER JOIN`
    - `LEFT JOIN`
    - `RIGHT JOIN`
    - `SELF JOIN`
    - `CROSS JOIN`

---

## 2. Comando `INNER JOIN`
  - **Definição**: O `INNER JOIN` retorna as linhas com valores correspondentes em ambas as tabelas.
  - **Características**:
    - Combina registros que têm valores correspondentes nas colunas especificadas de ambas as tabelas.
    - Se não houver correspondência, nenhum registro é retornado.
  - **Exemplo em Português**:
    - PT: "Vamos combinar as tabelas `Clientes` e `Pedidos` para mostrar todos os pedidos com as informações dos clientes correspondentes."
  - **Execução no MySQL**:
```sql
SELECT Clientes.Nome, Pedidos.OrderID
FROM Clientes
INNER JOIN Pedidos
ON Clientes.ClienteID = Pedidos.ClienteID;
```

---

## 3. Comando `LEFT JOIN`
  - **Definição**: O `LEFT JOIN` retorna todas as linhas da tabela à esquerda e as correspondentes da tabela à direita. Se não houver correspondência, retorna `NULL`.
  - **Características**:
    - Útil para encontrar registros que podem não ter correspondência em outra tabela.
  - **Exemplo em Português**:
    - PT: "Vamos listar todos os clientes e, se tiverem, os pedidos correspondentes."
  - **Execução no MySQL**:
```sql
SELECT Clientes.Nome, Pedidos.OrderID
FROM Clientes
LEFT JOIN Pedidos
ON Clientes.ClienteID = Pedidos.ClienteID;
```

---

## 4. Comando `RIGHT JOIN`
  - **Definição**: O `RIGHT JOIN` retorna todas as linhas da tabela à direita e as correspondentes da tabela à esquerda. Se não houver correspondência, retorna `NULL`.
  - **Características**:
    - Similar ao `LEFT JOIN`, mas retorna todos os registros da tabela à direita.
  - **Exemplo em Português**:
    - PT: "Vamos listar todos os pedidos e, se houver, os clientes correspondentes."
  - **Execução no MySQL**:
```sql
SELECT Clientes.Nome, Pedidos.OrderID
FROM Clientes
RIGHT JOIN Pedidos
ON Clientes.ClienteID = Pedidos.ClienteID;
```

---

## 5. Comando `SELF JOIN`
  - **Definição**: O `SELF JOIN` é uma junção de uma tabela com ela mesma, útil para comparar linhas dentro da mesma tabela.
  - **Características**:
    - Requer o uso de aliases para diferenciar as instâncias da tabela.
  - **Exemplo em Português**:
    - PT: "Vamos encontrar os funcionários e seus respectivos gerentes."
  - **Execução no MySQL**:
```sql
SELECT a.Nome AS Empregado, b.Nome AS Gerente
FROM Funcionarios a, Funcionarios b
WHERE a.ManagerID = b.EmployeeID;
```

---

## 6. Comando `CROSS JOIN`
  - **Definição**: O `CROSS JOIN` retorna o produto cartesiano de duas tabelas, combinando cada linha da primeira tabela com cada linha da segunda tabela.
  - **Características**:
    - Não requer condição para a junção e pode gerar um grande número de registros.
  - **Exemplo em Português**:
    - PT: "Vamos combinar todos os produtos com todas as categorias."
  - **Execução no MySQL**:
```sql
SELECT Produtos.Nome, Categorias.Nome
FROM Produtos
CROSS JOIN Categorias;
```

---

## 7. Considerações Importantes
  - **Explicação**:
    - Escolha o tipo de `JOIN` adequado para a situação específica.
    - Entenda o impacto no desempenho, especialmente ao usar `CROSS JOIN`.
    - Certifique-se de que as junções retornem os resultados esperados.

---

## 8. Exercícios Práticos
  - **Exercícios**:
    1. **INNER JOIN**: Combine as tabelas `Clientes` e `Pedidos` para mostrar os pedidos realizados por cada cliente.
    2. **LEFT JOIN**: Liste todos os clientes e, se houver, os pedidos correspondentes.
    3. **RIGHT JOIN**: Liste todos os pedidos e os clientes correspondentes, se houver.
    4. **SELF JOIN**: Encontre os funcionários e seus respectivos gerentes.
    5. **CROSS JOIN**: Gere uma lista combinando todas as categorias com todos os produtos.

---

## 9. Perguntas e Respostas

---

## 10. Encerramento
  - **Resumo**: Revisar os conceitos e a aplicação dos diferentes tipos de `JOIN` em SQL.
  - **Próximos Passos**: Explorar consultas avançadas e a otimização de `JOINs` na próxima aula.

---

## Materiais de Apoio
- [Exercícios Práticos](../exercicios/README.md)

---
