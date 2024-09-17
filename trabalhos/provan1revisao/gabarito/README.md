# Gabarito - Prova de Revisão

## **Questões Objetivas (Múltipla escolha)**

**1.** O comando `SELECT` é usado para:  
**Resposta**: c) Selecionar dados de uma tabela.

**2.** A palavra-chave `DELETE` é utilizada para:  
**Resposta**: c) Excluir registros específicos de uma tabela.

**3.** O comando `ALTER TABLE` permite:  
**Resposta**: a) Modificar a estrutura de uma tabela existente.

**4.** O `DROP TABLE`:  
**Resposta**: b) Apaga uma tabela e todos os seus dados permanentemente.

**5.** O que acontece ao usar o `TRUNCATE TABLE`?  
**Resposta**: a) Remove todos os registros, mas mantém a estrutura da tabela.

**6.** Qual comando é utilizado para adicionar um novo registro a uma tabela?  
**Resposta**: b) INSERT.

**7.** A cláusula `GROUP BY` organiza os resultados:  
**Resposta**: b) Por colunas específicas.

**8.** A restrição `PRIMARY KEY`:  
**Resposta**: b) Garante que uma coluna ou conjunto de colunas seja único.

**9.** O comando `INNER JOIN` retorna:  
**Resposta**: b) As linhas correspondentes de ambas as tabelas.

**10.** O `LEFT JOIN` retorna:  
**Resposta**: b) Todas as linhas da tabela da esquerda, mesmo que não haja correspondência na tabela da direita.

**11.** Para modificar um valor existente em uma tabela, utilizamos o comando:  
**Resposta**: d) UPDATE.

**12.** Qual é a diferença entre `VARCHAR` e `CHAR`?  
**Resposta**: c) `VARCHAR` tem tamanho variável, enquanto `CHAR` tem tamanho fixo.

**13.** A restrição `NOT NULL`:  
**Resposta**: b) Impede que uma coluna contenha valores nulos.

**14.** A restrição `CHECK` é usada para:  
**Resposta**: b) Verificar se os valores de uma coluna atendem a uma condição específica.

**15.** Para ordenar os resultados de uma consulta em ordem decrescente, você usa:  
**Resposta**: c) DESC.

**16.** A função `AVG()`  
**Resposta**: c) Calcula a média dos valores.

**17.** O comando `UPDATE`:  
**Resposta**: b) Modifica múltiplos registros com base em uma condição.

**18.** O comando para remover uma tabela inteira do banco de dados é:  
**Resposta**: b) DROP.

**19.** A junção `RIGHT JOIN` retorna:  
**Resposta**: b) Todas as linhas da tabela da direita e as correspondências da esquerda.

**20.** A restrição `FOREIGN KEY`:  
**Resposta**: a) Relaciona duas tabelas, vinculando uma coluna de uma tabela a uma `PRIMARY KEY` em outra tabela.

---

## **Questões Discursivas (Teóricas)**

**1.** Explique a diferença entre os comandos `DELETE` e `TRUNCATE`. Quando cada um deve ser utilizado?  
**Resposta**: O `DELETE` remove registros específicos de uma tabela com base em uma condição, e permite o uso de `WHERE` para escolher quais registros excluir. Já o `TRUNCATE` remove todos os registros de uma tabela, mas mantém sua estrutura, sendo mais rápido que o `DELETE`, pois não registra cada exclusão individualmente. Use `DELETE` quando você precisa excluir registros selecionados e `TRUNCATE` quando deseja apagar todos os dados da tabela.

**2.** Descreva o que são as restrições de integridade `PRIMARY KEY` e `FOREIGN KEY`, e como elas são usadas para garantir a integridade referencial no banco de dados.  
**Resposta**: A `PRIMARY KEY` garante que cada registro em uma tabela seja único e não nulo. A `FOREIGN KEY` é usada para vincular duas tabelas, garantindo que o valor em uma tabela corresponda a um valor em outra tabela, preservando a integridade referencial entre elas.

**3.** O que é normalização de banco de dados? Qual é a sua importância?  
**Resposta**: A normalização é o processo de organizar os dados de um banco de dados para reduzir a redundância e melhorar a integridade dos dados. Ela garante que os dados sejam armazenados de forma eficiente e que as tabelas estejam bem estruturadas, reduzindo a chance de inconsistências.

**4.** Explique a diferença entre os tipos de dados `CHAR` e `VARCHAR`. Em que situações seria mais adequado usar cada um deles?  
**Resposta**: `CHAR` é um tipo de dado de comprimento fixo, o que significa que ele sempre reserva o mesmo espaço de armazenamento, independentemente do tamanho real do dado inserido. Já `VARCHAR` é um tipo de dado de comprimento variável, que só usa o espaço necessário. `CHAR` é mais adequado quando os valores têm um tamanho fixo, enquanto `VARCHAR` é preferido quando os dados variam em comprimento.

**5.** O que é a cláusula `GROUP BY`? Dê um exemplo prático de quando ela seria útil.  
**Resposta**: A cláusula `GROUP BY` agrupa linhas que têm valores iguais em colunas especificadas, permitindo a aplicação de funções de agregação como `SUM`, `AVG`, `COUNT`. Um exemplo prático seria agrupar vendas por produto para calcular o total vendido por cada item.

**6.** Explique como funciona a junção `INNER JOIN` e dê um exemplo de quando ela deve ser usada.  
**Resposta**: O `INNER JOIN` retorna as linhas que possuem correspondências em ambas as tabelas envolvidas na junção. Ele deve ser usado quando você deseja apenas os registros que existem em ambas as tabelas. Exemplo: listar pedidos e seus clientes correspondentes.

**7.** Quais são as principais diferenças entre `LEFT JOIN` e `RIGHT JOIN`? Cite um exemplo prático para cada.  
**Resposta**: O `LEFT JOIN` retorna todas as linhas da tabela da esquerda, independentemente de haver correspondência na tabela da direita. Já o `RIGHT JOIN` faz o oposto: retorna todas as linhas da tabela da direita, mesmo sem correspondências na esquerda. Exemplo de `LEFT JOIN`: listar todos os clientes e seus pedidos, incluindo clientes sem pedidos. Exemplo de `RIGHT JOIN`: listar todos os pedidos e seus clientes, incluindo pedidos sem clientes (se permitido).

**8.** Descreva a função de agregação `SUM()` e forneça um exemplo prático de como ela pode ser utilizada em uma consulta SQL.  
**Resposta**: A função `SUM()` calcula o total de uma coluna de valores numéricos. Exemplo: calcular o total das vendas em um determinado mês.

**9.** O que são operadores de comparação em SQL? Explique e dê exemplos de três operadores comuns.  
**Resposta**: Operadores de comparação são usados para comparar valores em SQL. Exemplos:  
- `=` (igualdade):  
```sql
SELECT * FROM clientes WHERE idade = 30;
```

- `>` (maior que):  
```sql
SELECT * FROM produtos WHERE preco > 100;
```

- `<=` (menor ou igual a):  
```sql
SELECT * FROM pedidos WHERE quantidade <= 10;
```

**10.** Explique a importância da restrição `NOT NULL` e forneça um exemplo de como ela pode ser utilizada em uma tabela.  
**Resposta**: A restrição `NOT NULL` garante que uma coluna não possa conter valores nulos, o que é essencial quando um campo é obrigatório. Exemplo: em uma tabela de clientes, a coluna `email` pode ser `NOT NULL` para garantir que todo cliente tenha um email cadastrado.

---

## **Questões Práticas (SQL)**

**1.** Escreva uma consulta SQL para criar uma tabela chamada `alunos` com as colunas `id` (chave primária), `nome` (VARCHAR), `data_nascimento` (DATE) e `email` (VARCHAR).  
**Resposta**:  
```sql
CREATE TABLE alunos (  
    id INT PRIMARY KEY,  
    nome VARCHAR(255),  
    data_nascimento DATE,  
    email VARCHAR(255)  
);
```

**2.** Insira três registros fictícios na tabela `alunos` que você criou na questão anterior.  
**Resposta**:  
```sql
INSERT INTO alunos (id, nome, data_nascimento, email) VALUES  
(1, 'João Silva', '2001-05-12', 'joao@example.com'),  
(2, 'Maria Souza', '1999-11-20', 'maria@example.com'),  
(3, 'Pedro Santos', '2003-07-18', 'pedro@example.com');
```

**3.** Escreva uma consulta SQL para selecionar todos os alunos nascidos após o ano de 2000.  
**Resposta**:  
```sql
SELECT * FROM alunos WHERE data_nascimento > '2000-01-01';
```

**4.** Crie uma consulta SQL que modifique o email de um aluno específico, identificando-o pelo seu `id`.  
**Resposta**:  
```sql
UPDATE alunos SET email = 'novoemail@example.com' WHERE id = 1;
```

**5.** Escreva um comando SQL que exclua todos os alunos que não possuem email cadastrado.  
**Resposta**:  
```sql
DELETE FROM alunos WHERE email IS NULL;
```