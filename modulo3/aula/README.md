# Aula: Data Definition Language (DDL) em MySQL

## 1. Introdução ao DDL
- **Objetivo**: Apresentar o conceito de Data Definition Language (DDL) e seus principais comandos.
- **Explicação Teórica**:
  - **DDL**: Subconjunto do SQL usado para definir, modificar e excluir estruturas de banco de dados, como tabelas, índices e visões.
  - **Principais Comandos**: `CREATE`, `DROP`, `ALTER`, `TRUNCATE`, `RENAME`.
- **Exemplo Analógico**: Comparar DDL com a construção e modificação de um prédio (criação de salas, remoção de paredes, alteração do layout).

## 2. Comando `CREATE`
- **Objetivo**: Ensinar como criar tabelas e outros objetos no banco de dados.
- **Explicação Teórica**:
  - O comando `CREATE` é utilizado para criar estruturas como tabelas, índices, visões e muito mais.
- **Exemplo em Português**:
  - PT: "Vamos criar uma nova sala (tabela) chamada `Produtos` para armazenar informações sobre os produtos."
- **Execução no MySQL**:
  ```sql
  CREATE TABLE Produtos (
      ID INT,
      Nome VARCHAR(50),
      Preco DECIMAL(5,2)
  );
  ```

## 3. Comando `DROP`
- **Objetivo**: Explicar como excluir tabelas e outros objetos do banco de dados.
- **Explicação Teórica**:
  - O comando `DROP` remove completamente uma tabela ou outro objeto do banco de dados.
- **Exemplo em Português**:
  - PT: "Vamos demolir a sala `Produtos`."
- **Execução no MySQL**:
  ```sql
  DROP TABLE Produtos;
  ```

## 4. Comando `ALTER`
- **Objetivo**: Demonstrar como modificar a estrutura de uma tabela existente.
- **Explicação Teórica**:
  - O comando `ALTER` é usado para adicionar, remover ou modificar colunas em uma tabela existente.
- **Exemplo 1 - Adicionar uma coluna**:
  - PT: "Vamos adicionar uma nova coluna `Quantidade` na tabela `Produtos`."
  - **Execução no MySQL**:
    ```sql
    ALTER TABLE Produtos ADD Quantidade INT;
    ```
- **Exemplo 2 - Modificar uma coluna existente**:
  - PT: "Vamos alterar o tipo de dado da coluna `Nome` na tabela `Produtos` para permitir um nome mais longo."
  - **Execução no MySQL**:
    ```sql
    ALTER TABLE Produtos MODIFY COLUMN Nome VARCHAR(100);
    ```

## 5. Comando `TRUNCATE`
- **Objetivo**: Explicar como remover todos os registros de uma tabela sem excluí-la.
- **Explicação Teórica**:
  - O comando `TRUNCATE` remove todos os registros de uma tabela, mas mantém a estrutura da tabela.
- **Exemplo em Português**:
  - PT: "Vamos esvaziar a sala `Produtos`, removendo todos os itens (registros), mas mantendo as prateleiras (estrutura da tabela)."
- **Execução no MySQL**:
  ```sql
  TRUNCATE TABLE Produtos;
  ```

## 6. Comando `RENAME`
- **Objetivo**: Demonstrar como renomear tabelas e colunas no banco de dados.
- **Explicação Teórica**:
  - O comando `RENAME` é usado para alterar o nome de tabelas ou colunas.
- **Exemplo em Português**:
  - PT: "Vamos renomear a sala `Produtos` para `Itens`."
- **Execução no MySQL**:
  ```sql
  ALTER TABLE Produtos RENAME TO Itens;
  ```

## 7. Considerações Importantes sobre DDL
- **Explicação**:
  - Em operações DDL, os comandos `COMMIT` e `ROLLBACK` não podem ser usados, pois o MySQL confirma automaticamente as alterações.

## 8. Exercícios Práticos
- **Objetivo**: Praticar o uso dos comandos DDL.
- **Exercícios**:
  1. **Criação**: Crie uma tabela chamada `Clientes` com colunas `ID`, `Nome`, `Email`.
  2. **Alteração**: Adicione uma coluna `DataNascimento` à tabela `Clientes`.
  3. **Modificação**: Altere o tipo de dado da coluna `Nome` para `VARCHAR(100)`.
  4. **Truncamento**: Esvazie a tabela `Clientes` usando o comando `TRUNCATE`.
  5. **Exclusão**: Exclua a tabela `Clientes` usando o comando `DROP`.

## 9. Perguntas e Respostas
- **Objetivo**: Esclarecer dúvidas e reforçar o aprendizado.

## 10. Encerramento
- **Resumo**: Revisar os principais comandos DDL (`CREATE`, `DROP`, `ALTER`, `TRUNCATE`, `RENAME`).
- **Próximos Passos**: Explorar Data Manipulation Language (DML) na próxima aula.

## Materiais de Apoio
- [Exercícios Práticos](../exercicios/README.md)
