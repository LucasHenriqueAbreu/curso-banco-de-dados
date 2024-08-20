---
marp: true
title: Restrições de Dados em SQL
paginate: true
theme: default
---

# Aula: Restrições de Dados em SQL

## 1. Introdução às Restrições de Dados
  - **Objetivo**: Garantir a integridade e consistência dos dados em um banco de dados.
  - **Tipos de Restrições**: 
    - `PRIMARY KEY`
    - `FOREIGN KEY`
    - `UNIQUE`
    - `NOT NULL`
    - `CHECK`

---

## 2. Restrições `PRIMARY KEY`
  - **Definição**: Identifica unicamente cada registro em uma tabela.
  - **Características**:
    - Deve ser única e não nula.
    - Uma tabela pode ter apenas uma `PRIMARY KEY`.
- **Exemplo**: Criação de tabela com `PRIMARY KEY`
  
```sql
CREATE TABLE Funcionarios (
    ID int NOT NULL,
    Nome varchar(255) NOT NULL,
    PRIMARY KEY (ID)
);
```

---

## 3. Restrições `FOREIGN KEY`
  - **Definição**: Estabelece relações entre tabelas, garantindo integridade referencial.
  - **Uso**: Assegura que os valores de uma coluna correspondam a valores em outra tabela.
- **Exemplo**: Criação de uma `FOREIGN KEY`
  
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
  - **Definição**: Garante que todos os valores em uma coluna sejam únicos.
  - **Diferença para `PRIMARY KEY`**:
    - Permite `NULL`.
    - Uma tabela pode ter várias restrições `UNIQUE`.
- **Exemplo**: Coluna `Email` única na tabela Funcionários
  
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
  - **Definição**: Impede que uma coluna tenha valores nulos.
  - **Uso**: Garante que certas colunas sempre tenham um valor inserido.
- **Exemplo**: Garante que o nome do funcionário seja sempre preenchido
  
```sql
CREATE TABLE Funcionarios (
    ID int NOT NULL,
    Nome varchar(255) NOT NULL,
    PRIMARY KEY (ID)
);
```

---

## 6. Restrições `CHECK`
  - **Definição**: Define condições que os valores das colunas devem satisfazer.
  - **Uso**: Impede que valores fora dos critérios definidos sejam inseridos.
- **Exemplo**: Garantir que o salário dos funcionários seja maior que zero
  
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
  - **Exercícios**:
    1. **Criação de Tabelas**: Crie uma tabela `Produtos` com as colunas `ID`, `Nome`, `Preço` (com `CHECK` para garantir que seja positivo), e `Código de Barras` (`UNIQUE`).
    2. **Relacionamento de Tabelas**: Crie uma tabela `Pedidos` relacionada com a tabela `Clientes` usando `FOREIGN KEY`.
    3. **Manipulação de Tabelas**: Adicione uma coluna `DataNascimento` à tabela `Funcionarios` e aplique a restrição `NOT NULL`.

---

## 8. Perguntas e Respostas

---

## 9. Encerramento
  - **Resumo**: Revisar os principais conceitos de restrições em SQL.
  - **Próximos Passos**: Explorar comandos avançados de manipulação de dados (DML) em SQL na próxima aula.

---

## Materiais de Apoio
- [Exercícios Práticos](../exercicios/README.md)

---
