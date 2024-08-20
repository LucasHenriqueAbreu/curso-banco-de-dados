# Aula: Restrições de Dados em SQL

## 1. Introdução às Restrições de Dados
- **Objetivo**: Apresentar a importância das restrições de dados em SQL para garantir a integridade e consistência das informações em um banco de dados.
- **Explicação Teórica**:
  - **Integridade de Dados**: Como as restrições garantem que os dados inseridos no banco sejam válidos e consistentes.
  - **Tipos de Restrições**: Discussão sobre os diferentes tipos de restrições disponíveis em SQL.

---

## 2. Restrições `PRIMARY KEY`
- **Objetivo**: Ensinar o conceito e uso da restrição `PRIMARY KEY` para identificar unicamente cada registro em uma tabela.
- **Explicação Teórica**:
  - A `PRIMARY KEY` garante que cada registro na tabela seja único e não nulo.
  - Cada tabela pode ter apenas uma `PRIMARY KEY`, que pode ser composta por uma ou mais colunas.
- **Exemplo em Português**:
  - PT: "Vamos criar uma tabela de funcionários onde cada funcionário tem um ID único."
- **Execução no MySQL**:
```sql
CREATE TABLE Funcionarios (
    ID int NOT NULL,
    Nome varchar(255) NOT NULL,
    PRIMARY KEY (ID)
);
```

---

## 3. Restrições `FOREIGN KEY`
- **Objetivo**: Demonstrar como usar a restrição `FOREIGN KEY` para estabelecer relações entre tabelas.
- **Explicação Teórica**:
  - A `FOREIGN KEY` garante que os valores de uma coluna correspondam aos valores de uma coluna em outra tabela, mantendo a integridade referencial.
- **Exemplo em Português**:
  - PT: "Vamos criar uma relação entre a tabela de funcionários e a tabela de departamentos, onde cada funcionário pertence a um departamento."
- **Execução no MySQL**:
```sql
CREATE TABLE Departamentos (
    ID int NOT NULL,
    Nome varchar(255) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE Funcionarios (
    ID int NOT NULL,
    Nome varchar(255) NOT NULL,
    DepartamentoID int,
    PRIMARY KEY (ID),
    FOREIGN KEY (DepartamentoID) REFERENCES Departamentos(ID)
);
```

---

## 4. Restrições `UNIQUE`
- **Objetivo**: Ensinar como garantir que os valores em uma coluna ou conjunto de colunas sejam únicos em uma tabela.
- **Explicação Teórica**:
  - A restrição `UNIQUE` garante que todos os valores em uma coluna sejam diferentes, permitindo apenas uma ocorrência de cada valor.
  - Diferente da `PRIMARY KEY`, uma coluna `UNIQUE` pode conter `NULL`.
- **Exemplo em Português**:
  - PT: "Vamos garantir que os endereços de e-mail dos funcionários sejam únicos na tabela."
- **Execução no MySQL**:
```sql
CREATE TABLE Funcionarios (
    ID int NOT NULL,
    Nome varchar(255) NOT NULL,
    Email varchar(255) UNIQUE,
    PRIMARY KEY (ID)
);
```

---

## 5. Restrições `NOT NULL`
- **Objetivo**: Explicar como utilizar a restrição `NOT NULL` para impedir que uma coluna aceite valores nulos.
- **Explicação Teórica**:
  - A restrição `NOT NULL` assegura que uma coluna sempre tenha um valor inserido, evitando que fique em branco.
- **Exemplo em Português**:
  - PT: "Vamos garantir que o nome do funcionário seja sempre preenchido."
- **Execução no MySQL**:
```sql
CREATE TABLE Funcionarios (
    ID int NOT NULL,
    Nome varchar(255) NOT NULL,
    PRIMARY KEY (ID)
);
```

---

## 6. Restrições `CHECK`
- **Objetivo**: Demonstrar como usar a restrição `CHECK` para definir condições que os valores das colunas devem satisfazer.
- **Explicação Teórica**:
  - A restrição `CHECK` permite definir uma condição que os valores inseridos em uma coluna devem cumprir.
- **Exemplo em Português**:
  - PT: "Vamos garantir que o salário dos funcionários seja maior que zero."
- **Execução no MySQL**:
```sql
CREATE TABLE Funcionarios (
    ID int NOT NULL,
    Nome varchar(255) NOT NULL,
    Salario decimal(10, 2) CHECK (Salario > 0),
    PRIMARY KEY (ID)
);
```

---

## 7. Exercícios Práticos
- **Objetivo**: Praticar a criação e manipulação de tabelas utilizando as restrições aprendidas.
- **Exercícios**:
  1. **Criação de Tabelas**: Crie uma tabela `Produtos` com as colunas `ID`, `Nome`, `Preço` (com `CHECK` para garantir que seja positivo), e `Código de Barras` (`UNIQUE`).
  2. **Relacionamento de Tabelas**: Crie uma tabela `Pedidos` relacionada com a tabela `Clientes` usando `FOREIGN KEY`.
  3. **Manipulação de Tabelas**: Adicione uma coluna `DataNascimento` à tabela `Funcionarios` e aplique a restrição `NOT NULL`.

---

## 8. Perguntas e Respostas
- **Objetivo**: Esclarecer dúvidas e reforçar o aprendizado.

---

## 9. Encerramento
- **Resumo**: Revisar os principais conceitos de restrições em SQL, enfatizando a importância de cada uma para a integridade dos dados.
- **Próximos Passos**: Na próxima aula, explorar comandos avançados de manipulação de dados (DML) em SQL.

---

## Materiais de Apoio
- [Exercícios Práticos](../exercicios/README.md)

---
