
# Aula de Introdução a Banco de Dados com MySQL

## 1. Introdução ao Banco de Dados
- **Objetivo**: Apresentar o conceito de banco de dados e a importância do SQL.
- **Explicação Teórica**:
  - **Banco de Dados**: Uma coleção organizada de informações que podem ser facilmente acessadas, gerenciadas e atualizadas.
  - **SQL (Structured Query Language)**: Linguagem padrão para interagir com bancos de dados relacionais.
- **Exemplo Analógico**: Comparar um banco de dados com uma biblioteca, onde cada tabela é como uma estante e cada linha é como um livro.

## 2. Criação de um Banco de Dados
- **Objetivo**: Ensinar a criar um banco de dados.
- **Explicação Teórica**:
  - O comando `CREATE DATABASE` é usado para criar um novo banco de dados.
- **Analogia em Português**:
  - PT: "Vamos construir uma nova biblioteca chamada Mercearia."
  - SQL: `CREATE DATABASE MERCEARIA;`
- **Execução no MySQL**:
  ```sql
  CREATE DATABASE MERCEARIA;
  ```

## 3. Criação de uma Tabela
- **Objetivo**: Ensinar a criar uma tabela simples.
- **Explicação Teórica**:
  - O comando `CREATE TABLE` define uma nova tabela com colunas e tipos de dados.
- **Analogia em Português**:
  - PT: "Vamos adicionar uma nova estante na biblioteca para armazenar informações sobre produtos."
  - SQL: `CREATE TABLE Produtos (ID INT, Nome VARCHAR(50), Preco DECIMAL(5,2));`
- **Execução no MySQL**:
  ```sql
  USE MERCEARIA;
  CREATE TABLE Produtos (
      ID INT,
      Nome VARCHAR(50),
      Preco DECIMAL(5,2)
  );
  ```

## 4. Inserção de Dados na Tabela
- **Objetivo**: Mostrar como inserir dados em uma tabela.
- **Explicação Teórica**:
  - O comando `INSERT INTO` insere novas linhas de dados em uma tabela.
- **Analogia em Português**:
  - PT: "Vamos adicionar um novo livro (produto) na estante (tabela)."
  - SQL: `INSERT INTO Produtos (ID, Nome, Preco) VALUES (1, 'Arroz', 5.50);`
- **Execução no MySQL**:
  ```sql
  INSERT INTO Produtos (ID, Nome, Preco) VALUES (1, 'Arroz', 5.50);
  INSERT INTO Produtos (ID, Nome, Preco) VALUES (2, 'Feijão', 4.80);
  INSERT INTO Produtos (ID, Nome, Preco) VALUES (3, 'Açúcar', 3.20);
  ```

## 5. Consultas Simples
- **Objetivo**: Ensinar como consultar dados com critérios simples.
- **Explicação Teórica**:
  - O comando `SELECT` é usado para recuperar dados de uma tabela.
  - O `WHERE` filtra os resultados com base em uma condição.
- **Analogia em Português**:
  - PT: "Vamos procurar todos os produtos que custam menos de R$5,00."
  - SQL: `SELECT * FROM Produtos WHERE Preco < 5.00;`
- **Execução no MySQL**:
  ```sql
  SELECT * FROM Produtos WHERE Preco < 5.00;
  ```

## 6. Perguntas e Respostas
- Abra espaço para perguntas dos alunos e esclareça quaisquer dúvidas.

## 7. Encerramento
- **Resumo**: Reiterar os conceitos principais abordados.
- **Próximos Passos**: Introdução a tipos de dados mais complexos, funções agregadas, e normalização de dados em aulas futuras.

## Materiais de Apoio
- Slides com exemplos e explicações.
- Exercícios práticos para os alunos tentarem por conta própria.
