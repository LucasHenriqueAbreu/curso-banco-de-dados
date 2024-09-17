
# Prova de Revisão

## Questões Objetivas

**1.** O comando `SELECT` é usado para:
- a) Inserir dados em uma tabela.
- b) Modificar dados em uma tabela.
- c) Selecionar dados de uma tabela.
- d) Excluir dados de uma tabela.

**2.** A palavra-chave `DELETE` é utilizada para:
- a) Apagar uma tabela inteira.
- b) Excluir uma coluna específica de uma tabela.
- c) Excluir registros específicos de uma tabela.
- d) Criar uma nova tabela.

**3.** O comando `ALTER TABLE` permite:
- a) Modificar a estrutura de uma tabela existente.
- b) Excluir registros específicos de uma tabela.
- c) Selecionar dados de uma tabela.
- d) Excluir uma tabela inteira.

**4.** O `DROP TABLE`:
- a) Remove todos os registros de uma tabela, mas mantém a estrutura.
- b) Apaga uma tabela e todos os seus dados permanentemente.
- c) Exclui apenas os registros de uma tabela.
- d) Apaga uma tabela temporariamente.

**5.** O que acontece ao usar o `TRUNCATE TABLE`?
- a) Remove todos os registros, mas mantém a estrutura da tabela.
- b) Apaga a tabela e seus dados.
- c) Exclui registros específicos.
- d) Adiciona colunas à tabela.

**6.** Qual comando é utilizado para adicionar um novo registro a uma tabela?
- a) SELECT
- b) INSERT
- c) UPDATE
- d) DELETE

**7.** A cláusula `GROUP BY` organiza os resultados:
- a) Em ordem crescente ou decrescente.
- b) Por colunas específicas.
- c) De forma aleatória.
- d) Sem nenhuma ordem específica.

**8.** A restrição `PRIMARY KEY`:
- a) Permite valores duplicados.
- b) Garante que uma coluna ou conjunto de colunas seja único.
- c) Permite valores `NULL`.
- d) É usada para relacionar duas tabelas.

**9.** O comando `INNER JOIN` retorna:
- a) Todas as linhas de ambas as tabelas, independentemente de coincidências.
- b) As linhas correspondentes de ambas as tabelas.
- c) Todas as linhas da tabela da esquerda e as correspondências da direita.
- d) Todas as linhas da tabela da direita e as correspondências da esquerda.

**10.** O `LEFT JOIN` retorna:
- a) Apenas as correspondências de ambas as tabelas.
- b) Todas as linhas da tabela da esquerda, mesmo que não haja correspondência na tabela da direita.
- c) Todas as linhas da tabela da direita e as correspondências da tabela da esquerda.
- d) Apenas as linhas da tabela da esquerda.

**11.** Para modificar um valor existente em uma tabela, utilizamos o comando:
- a) SELECT
- b) INSERT
- c) DELETE
- d) UPDATE

**12.** Qual é a diferença entre `VARCHAR` e `CHAR`?
- a) Ambos são iguais.
- b) `VARCHAR` tem tamanho fixo, enquanto `CHAR` tem tamanho variável.
- c) `VARCHAR` tem tamanho variável, enquanto `CHAR` tem tamanho fixo.
- d) Ambos são de tamanho variável.

**13.** A restrição `NOT NULL`:
- a) Garante que todos os valores de uma coluna sejam únicos.
- b) Impede que uma coluna contenha valores nulos.
- c) Relaciona duas tabelas.
- d) Garante que os valores sejam positivos.

**14.** A restrição `CHECK` é usada para:
- a) Garantir que uma coluna contenha valores únicos.
- b) Verificar se os valores de uma coluna atendem a uma condição específica.
- c) Relacionar uma coluna a uma `PRIMARY KEY`.
- d) Garantir que uma tabela não tenha valores `NULL`.

**15.** Para ordenar os resultados de uma consulta em ordem decrescente, você usa:
- a) GROUP BY
- b) ORDER BY
- c) DESC
- d) ASC

**16.** A função `AVG()`:
- a) Calcula o total de registros.
- b) Calcula a soma dos valores.
- c) Calcula a média dos valores.
- d) Calcula o valor máximo de uma coluna.

**17.** O comando `UPDATE`:
- a) Modifica apenas um registro de uma tabela.
- b) Modifica múltiplos registros com base em uma condição.
- c) Exclui todos os registros de uma tabela.
- d) Insere um novo registro em uma tabela.

**18.** O comando para remover uma tabela inteira do banco de dados é:
- a) TRUNCATE
- b) DROP
- c) DELETE
- d) ALTER

**19.** A junção `RIGHT JOIN` retorna:
- a) Todas as linhas da tabela da esquerda e as correspondências da direita.
- b) Todas as linhas da tabela da direita e as correspondências da esquerda.
- c) Apenas as correspondências entre as duas tabelas.
- d) Todas as linhas de ambas as tabelas.

**20.** A restrição `FOREIGN KEY`:
- a) Relaciona duas tabelas, vinculando uma coluna de uma tabela a uma `PRIMARY KEY` em outra tabela.
- b) Garante que uma coluna tenha valores únicos.
- c) Permite valores duplicados em duas tabelas.
- d) Garante que uma tabela tenha apenas uma chave primária.

---

## Questões Discursivas

**1.** Explique a diferença entre os comandos `DELETE` e `TRUNCATE`. Quando cada um deve ser utilizado?

**2.** Descreva o que são as restrições de integridade `PRIMARY KEY` e `FOREIGN KEY`, e como elas são usadas para garantir a integridade referencial no banco de dados.

**3.** O que é normalização de banco de dados? Qual é a sua importância?

**4.** Explique a diferença entre os tipos de dados `CHAR` e `VARCHAR`. Em que situações seria mais adequado usar cada um deles?

**5.** O que é a cláusula `GROUP BY`? Dê um exemplo prático de quando ela seria útil.

**6.** Explique como funciona a junção `INNER JOIN` e dê um exemplo de quando ela deve ser usada.

**7.** Quais são as principais diferenças entre `LEFT JOIN` e `RIGHT JOIN`? Cite um exemplo prático para cada.

**8.** Descreva a função de agregação `SUM()` e forneça um exemplo prático de como ela pode ser utilizada em uma consulta SQL.

**9.** O que são operadores de comparação em SQL? Explique e dê exemplos de três operadores comuns.

**10.** Explique a importância da restrição `NOT NULL` e forneça um exemplo de como ela pode ser utilizada em uma tabela.

---

## Questões Práticas

**1.** Escreva uma consulta SQL para criar uma tabela chamada `alunos` com as colunas `id` (chave primária), `nome` (VARCHAR), `data_nascimento` (DATE) e `email` (VARCHAR).

**2.** Insira três registros fictícios na tabela `alunos` que você criou na questão anterior.

**3.** Escreva uma consulta SQL para selecionar todos os alunos nascidos após o ano de 2000.

**4.** Crie uma consulta SQL que modifique o email de um aluno específico, identificando-o pelo seu `id`.

**5.** Escreva um comando SQL que exclua todos os alunos que não possuem email cadastrado.

**6.** Escreva uma consulta SQL que mostre o nome dos alunos e o número de cursos em que estão matriculados, utilizando a junção `INNER JOIN` entre as tabelas `alunos` e `matriculas`.

**7.** Crie uma consulta SQL que mostre a média de idade dos alunos, agrupando por ano de nascimento.

**8.** Escreva uma consulta SQL que retorne todas as reservas feitas por clientes na tabela `reservas` e mostre também os dados dos pedidos correspondentes (use `LEFT JOIN`).

**9.** Escreva uma consulta SQL para criar uma tabela `livros` com as colunas `id` (chave primária), `titulo` (VARCHAR), `autor` (VARCHAR), e `ano_publicacao` (INT).

**10.** Insira cinco registros fictícios na tabela `livros` e, em seguida, escreva uma consulta SQL que mostre todos os livros publicados após o ano de 2015.

[Gabarito](./gabarito/README.md)