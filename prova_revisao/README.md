# Prova de SQL - Gabarito com Explicações

---

## QUESTÃO 1 (0,4)
**Qual das opções a seguir descreve corretamente o uso principal do comando SELECT?**

- a) Inserir dados em uma tabela.  
- b) Modificar dados em uma tabela.  
- **c) Selecionar dados de uma tabela.**  
- d) Excluir dados de uma tabela.  

**Resposta:**  
c) Selecionar dados de uma tabela.  
**Explicação:**  
O comando `SELECT` é utilizado para consultar dados armazenados em uma ou mais tabelas. Ele não altera os dados, apenas os recupera para visualização.

---

## QUESTÃO 2 (0,4)
**Qual é o principal propósito do comando DELETE?**

- a) Apagar uma tabela inteira, incluindo sua estrutura.  
- b) Excluir uma coluna específica de uma tabela.  
- **c) Excluir registros de uma tabela.**  
- d) Criar uma nova tabela no banco de dados.  

**Resposta:**  
c) Excluir registros de uma tabela.  
**Explicação:**  
O comando `DELETE` remove registros específicos de uma tabela, com base em uma condição. Ele não exclui a estrutura da tabela.

---

## QUESTÃO 3 (0,4)
**Qual das alternativas a seguir descreve corretamente o uso do comando ALTER TABLE?**

- a) Excluir todos os registros de uma tabela.  
- **b) Modificar a estrutura de uma tabela.**  
- c) Selecionar dados de uma tabela.  
- d) Apagar uma tabela inteira.  

**Resposta:**  
b) Modificar a estrutura de uma tabela.  
**Explicação:**  
O comando `ALTER TABLE` é usado para modificar a estrutura de uma tabela, como adicionar ou remover colunas, ou alterar tipos de dados.

---

## QUESTÃO 4 (0,4)
**Qual das opções a seguir descreve corretamente o uso do comando DROP TABLE?**

- a) Remove todos os registros, mas mantém a estrutura da tabela.  
- **b) Apaga a tabela e todos os seus dados permanentemente.**  
- c) Exclui registros de uma tabela.  
- d) Apaga uma tabela temporariamente.  

**Resposta:**  
b) Apaga a tabela e todos os seus dados permanentemente.  
**Explicação:**  
O comando `DROP TABLE` remove uma tabela do banco de dados, incluindo sua estrutura e todos os dados contidos nela.

---

## QUESTÃO 5 (0,4)
**Qual é o objetivo principal da cláusula GROUP BY?**

- a) Ordenar os resultados em ordem crescente ou decrescente.  
- **b) Agrupar os resultados com base em colunas específicas.**  
- c) Aplicar filtros aos dados de uma tabela.  
- d) Substituir registros duplicados por valores únicos.  

**Resposta:**  
b) Agrupar os resultados com base em colunas específicas.  
**Explicação:**  
A cláusula `GROUP BY` agrupa linhas que têm valores iguais em colunas específicas, geralmente usada com funções de agregação como `SUM`, `COUNT` ou `AVG`.

---

## QUESTÃO 6 (0,5)
**Qual é a principal função do comando INNER JOIN?**

- a) Retornar todas as linhas de ambas as tabelas, independentemente de correspondências.  
- **b) Retornar apenas as linhas que possuem correspondências em ambas as tabelas.**  
- c) Combinar todas as linhas da tabela à esquerda, mesmo sem correspondências.  
- d) Retornar apenas as linhas da tabela à direita.  

**Resposta:**  
b) Retornar apenas as linhas que possuem correspondências em ambas as tabelas.  
**Explicação:**  
O `INNER JOIN` retorna apenas as linhas onde há correspondência entre as tabelas relacionadas.

---

## QUESTÃO 7 (0,4)
**Qual das seguintes alternativas descreve corretamente o uso do comando UPDATE?**

- a) Modificar todos os registros de uma tabela, sem exceções.  
- b) Inserir novos registros em uma tabela.  
- **c) Atualizar registros específicos em uma tabela, com base em uma condição.**  
- d) Excluir registros de uma tabela com base em uma condição.  

**Resposta:**  
c) Atualizar registros específicos em uma tabela, com base em uma condição.  
**Explicação:**  
O comando `UPDATE` é usado para modificar dados existentes em uma tabela, geralmente condicionado por um `WHERE`.

---

## QUESTÃO 8 (0,8)
**O comando DELETE e o comando TRUNCATE são ambos utilizados para remover dados de uma tabela. Explique as diferenças entre esses dois comandos e forneça exemplos práticos de quando cada um deve ser utilizado.**

**Resposta:**  
- O comando `DELETE` remove registros específicos com base em uma condição, mas mantém o log de transações, permitindo rollback.  
- O comando `TRUNCATE` remove todos os registros de uma tabela de forma rápida e não gera log detalhado, sendo irreversível.  

**Exemplos:**  
- Use `DELETE` para remover registros específicos:  
  ```sql
  DELETE FROM clientes WHERE idade < 18;
  /```

- Use `TRUNCATE` para limpar completamente a tabela:  
  ```sql
  TRUNCATE TABLE vendas;
  /```

---

---

## QUESTÃO 9 (0,8)
**Em bancos de dados relacionais, as junções (JOINs) são utilizadas para combinar dados de diferentes tabelas. Explique a diferença entre INNER JOIN e LEFT JOIN, e dê exemplos práticos de quando cada um seria apropriado.**

**Resposta:**  
- **INNER JOIN:** Retorna apenas as linhas que possuem correspondências em ambas as tabelas.
- **LEFT JOIN:** Retorna todas as linhas da tabela à esquerda e as correspondências da tabela à direita. Se não houver correspondência, retorna `NULL` para as colunas da tabela à direita.

**Exemplo:**  
- `INNER JOIN` para encontrar clientes com pedidos:  
  ```sql
  SELECT clientes.nome, pedidos.data_pedido
  FROM clientes
  INNER JOIN pedidos ON clientes.id = pedidos.cliente_id;
  /```

- `LEFT JOIN` para listar todos os clientes, mesmo sem pedidos:  
  ```sql
  SELECT clientes.nome, pedidos.data_pedido
  FROM clientes
  LEFT JOIN pedidos ON clientes.id = pedidos.cliente_id;
  /```

---

## QUESTÃO 10 (0,8)
**Explique o que são chave primária e chave estrangeira, descrevendo as principais diferenças entre elas e como elas são utilizadas para garantir a integridade referencial em um banco de dados.**

**Resposta:**  
- **Chave Primária:** Um identificador único para cada registro de uma tabela. Não permite valores duplicados ou `NULL`.
- **Chave Estrangeira:** Um campo em uma tabela que referencia a chave primária de outra tabela, criando um vínculo entre elas.

**Exemplo:**  
- A chave primária garante que cada cliente tenha um identificador único.  
- A chave estrangeira na tabela `pedidos` assegura que cada pedido está relacionado a um cliente válido.

---

## QUESTÃO 11 (1,0)
**Escreva uma consulta SQL que traga o nome dos funcionários e o nome de seus respectivos cargos.**

**Resposta:**  
```sql
SELECT funcionarios.nome AS nome_funcionario, cargos.nome AS nome_cargo
FROM funcionarios
INNER JOIN cargos ON funcionarios.cargo_id = cargos.id;
/```

**Explicação:**  
O `INNER JOIN` combina os dados das tabelas `funcionarios` e `cargos` onde há correspondência entre `cargo_id` e `id`.

---

## QUESTÃO 12 (1,0)
**Escreva uma consulta SQL que retorne o nome dos funcionários, o nome das tarefas que eles estão responsáveis, o nome do projeto ao qual cada tarefa pertence e o nome do departamento de cada funcionário.**

**Resposta:**  
```sql
SELECT 
    funcionarios.nome_funcionario,
    tarefas.nome_tarefa,
    projetos.nome_projeto,
    departamentos.nome_departamento
FROM funcionarios
INNER JOIN departamentos ON funcionarios.departamento_id = departamentos.id
INNER JOIN funcionarios_tarefas ON funcionarios.id = funcionarios_tarefas.funcionario_id
INNER JOIN tarefas ON funcionarios_tarefas.tarefa_id = tarefas.id
INNER JOIN projetos ON tarefas.projeto_id = projetos.id;
/```

**Explicação:**  
Essa consulta utiliza múltiplos `INNER JOINs` para relacionar todas as tabelas necessárias, conforme os vínculos entre elas.

---

## QUESTÃO 13 (1,0)
**Escreva uma consulta SQL que gere um relatório com o nome dos clientes e a data de seus pedidos. Deve incluir clientes sem pedidos.**

**Resposta:**  
```sql
SELECT clientes.nome_cliente, pedidos.data_pedido
FROM clientes
LEFT JOIN pedidos ON clientes.id = pedidos.cliente_id;
/```

**Explicação:**  
O `LEFT JOIN` retorna todos os clientes, mesmo que não tenham pedidos, e preenche a data do pedido com `NULL`.

---

## QUESTÃO 14 (1,0)
**Escreva uma consulta SQL que retorne o nome do cliente, o nome do vendedor, o nome do produto, a quantidade de produtos no pedido e a data do pedido.**

**Resposta:**  
```sql
SELECT 
    clientes.nome_cliente,
    vendedores.nome_vendedor,
    produtos.nome_produto,
    itens_pedido.quantidade,
    pedidos.data_pedido
FROM pedidos
INNER JOIN clientes ON pedidos.cliente_id = clientes.id
INNER JOIN vendedores ON pedidos.vendedor_id = vendedores.id
INNER JOIN itens_pedido ON pedidos.id = itens_pedido.pedido_id
INNER JOIN produtos ON itens_pedido.produto_id = produtos.id;
/```

**Explicação:**  
A consulta utiliza `INNER JOIN` para relacionar todas as tabelas necessárias, garantindo que apenas dados consistentes sejam retornados.

---

## QUESTÃO 15 (1,0)
**Escreva uma consulta SQL que retorne o nome dos treinadores, o nome dos seus Pokémons e o tipo de cada Pokémon.**

**Resposta:**  
```sql
SELECT 
    treinadores.nome_treinador,
    pokemons.nome_pokemon,
    tipos.nome_tipo
FROM pokemons
INNER JOIN treinadores ON pokemons.treinador_id = treinadores.id
INNER JOIN tipos ON pokemons.tipo_id = tipos.id;
/```

**Explicação:**  
A consulta usa `INNER JOIN` para relacionar as tabelas `pokemons`, `treinadores` e `tipos`, retornando as informações solicitadas.

---