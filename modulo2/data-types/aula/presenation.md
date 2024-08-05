---
marp: true
title: Plano de Ensino – Introdução a Banco de Dados
paginate: true
theme: default
---

# Aula sobre Tipos de Dados em SQL

## 1. Introdução aos Tipos de Dados em SQL
- Os tipos de dados definem o tipo de informações que podem ser armazenadas em uma coluna de uma tabela.
- A sintaxe específica pode variar ligeiramente entre diferentes sistemas de gerenciamento de banco de dados (DBMS), mas os conceitos gerais são semelhantes.
- **Exemplo Analógico**: Comparar tipos de dados com as diferentes prateleiras de uma estante, onde cada prateleira é adequada para armazenar um tipo específico de item (livros, revistas, DVDs, etc.).

---

## 2. Tipo de Dado INT
- `INT` é usado para armazenar números inteiros.
- **Analogia em Português**:
  - PT: "Vamos criar uma prateleira para armazenar apenas números inteiros, como números de identificação."
  - SQL: `CREATE TABLE funcionarios (id INT, nome VARCHAR(30));`
- **Execução no MySQL**:
  ```sql
  CREATE TABLE funcionarios (
      id INT,
      nome VARCHAR(30)
  );
  ```

---

## 3. Tipo de Dado DECIMAL
- `DECIMAL` é usado para armazenar números decimais com precisão definida.
- **Analogia em Português**:
  - PT: "Vamos criar uma prateleira para armazenar preços de itens com valores decimais."
  - SQL: `CREATE TABLE itens (id INT, preco DECIMAL(5,2));`
- **Execução no MySQL**:
  ```sql
  CREATE TABLE itens (
      id INT,
      preco DECIMAL(5,2)
  );
  ```

---

## 4. Tipo de Dado CHAR
- `CHAR` é usado para armazenar strings com comprimento fixo.
- **Analogia em Português**:
  - PT: "Vamos criar uma prateleira para armazenar iniciais dos nomes, onde cada prateleira tem exatamente 1 espaço."
  - SQL: `CREATE TABLE funcionarios (id INT, inicial CHAR(1));`
- **Execução no MySQL**:
  ```sql
  CREATE TABLE funcionarios (
      id INT,
      inicial CHAR(1)
  );
  ```

---

## 5. Tipo de Dado VARCHAR
- `VARCHAR` é usado para armazenar strings com comprimento variável.
- **Analogia em Português**:
  - PT: "Vamos criar uma prateleira para armazenar nomes completos, onde o tamanho pode variar."
  - SQL: `CREATE TABLE funcionarios (id INT, nome VARCHAR(30));`
- **Execução no MySQL**:
  ```sql
  CREATE TABLE funcionarios (
      id INT,
      nome VARCHAR(30)
  );
  ```

---

## 6. Tipo de Dado DATE
- `DATE` é usado para armazenar datas no formato `YYYY-MM-DD`.
- **Analogia em Português**:
  - PT: "Vamos criar uma prateleira para armazenar datas de nascimento dos funcionários."
  - SQL: `CREATE TABLE funcionarios (id INT, data_nascimento DATE);`
- **Execução no MySQL**:
  ```sql
  CREATE TABLE funcionarios (
      id INT,
      data_nascimento DATE
  );
  ```

---

## 7. Tipo de Dado DATETIME
  - `DATETIME` é usado para armazenar valores de data e hora no formato `YYYY-MM-DD HH:MI:SS`.
- **Analogia em Português**:
  - PT: "Vamos criar uma prateleira para armazenar a data e hora dos pedidos."
  - SQL: `CREATE TABLE pedidos (id INT, data_pedido DATETIME);`
- **Execução no MySQL**:
  ```sql
  CREATE TABLE pedidos (
      id INT,
      data_pedido DATETIME
  );
  ```

---

## 8. Tipo de Dado BOOLEAN
  - `BOOLEAN` é usado para armazenar valores booleanos (`TRUE` ou `FALSE`).
- **Analogia em Português**:
  - PT: "Vamos criar uma prateleira para armazenar informações se um funcionário está ativo ou não."
  - SQL: `CREATE TABLE funcionarios (id INT, ativo BOOLEAN);`
- **Execução no MySQL**:
  ```sql
  CREATE TABLE funcionarios (
      id INT,
      ativo BOOLEAN
  );
  ```

---

## 9. Perguntas e Respostas
- Alguma dúvida?

## Quizz
https://quizizz.com/admin/quiz/66b141a31e908a148c5bb893?source=quiz_share