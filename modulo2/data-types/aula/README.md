# Aula sobre Tipos de Dados em SQL

## 1. Introdução aos Tipos de Dados em SQL
- **Objetivo**: Apresentar os diferentes tipos de dados em SQL e como utilizá-los ao definir colunas de tabelas.
- **Explicação Teórica**:
  - Os tipos de dados definem o tipo de informações que podem ser armazenadas em uma coluna de uma tabela.
  - A sintaxe específica pode variar ligeiramente entre diferentes sistemas de gerenciamento de banco de dados (DBMS), mas os conceitos gerais são semelhantes.
- **Exemplo Analógico**: Comparar tipos de dados com as diferentes prateleiras de uma estante, onde cada prateleira é adequada para armazenar um tipo específico de item (livros, revistas, DVDs, etc.).

## 2. Tipo de Dado INT
- **Objetivo**: Ensinar o uso do tipo de dado `INT` para números inteiros.
- **Explicação Teórica**:
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

## 3. Tipo de Dado DECIMAL
- **Objetivo**: Ensinar o uso do tipo de dado `DECIMAL` para números decimais.
- **Explicação Teórica**:
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

## 4. Tipo de Dado CHAR
- **Objetivo**: Ensinar o uso do tipo de dado `CHAR` para strings de comprimento fixo.
- **Explicação Teórica**:
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

## 5. Tipo de Dado VARCHAR
- **Objetivo**: Ensinar o uso do tipo de dado `VARCHAR` para strings de comprimento variável.
- **Explicação Teórica**:
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

## 6. Tipo de Dado DATE
- **Objetivo**: Ensinar o uso do tipo de dado `DATE` para armazenar datas.
- **Explicação Teórica**:
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

## 7. Tipo de Dado DATETIME
- **Objetivo**: Ensinar o uso do tipo de dado `DATETIME` para armazenar data e hora.
- **Explicação Teórica**:
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

## 8. Tipo de Dado BOOLEAN
- **Objetivo**: Ensinar o uso do tipo de dado `BOOLEAN` para valores booleanos.
- **Explicação Teórica**:
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

## 9. Perguntas e Respostas
- Abra espaço para perguntas dos alunos e esclareça quaisquer dúvidas.

## 10. Encerramento
- **Resumo**: Reiterar os conceitos principais abordados sobre os tipos de dados em SQL.
- **Próximos Passos**: Explorar mais tipos de dados e como escolher o tipo de dado adequado para diferentes cenários.

## Materiais de Apoio
- Slides com exemplos e explicações.
- Exercícios práticos para os alunos tentarem por conta própria.

## Código SQL dos Exemplos

```sql
-- Criação da tabela funcionarios com tipos de dados INT e VARCHAR
CREATE TABLE funcionarios (
    id INT,
    nome VARCHAR(30)
);

-- Criação da tabela itens com tipo de dado DECIMAL
CREATE TABLE itens (
    id INT,
    preco DECIMAL(5,2)
);

-- Criação da tabela funcionarios com tipo de dado CHAR
CREATE TABLE funcionarios (
    id INT,
    inicial CHAR(1)
);

-- Criação da tabela funcionarios com tipo de dado DATE
CREATE TABLE funcionarios (
    id INT,
    data_nascimento DATE
);

-- Criação da tabela pedidos com tipo de dado DATETIME
CREATE TABLE pedidos (
    id INT,
    data_pedido DATETIME
);

-- Criação da tabela funcionarios com tipo de dado BOOLEAN
CREATE TABLE funcionarios (
    id INT,
    ativo BOOLEAN
);
```
