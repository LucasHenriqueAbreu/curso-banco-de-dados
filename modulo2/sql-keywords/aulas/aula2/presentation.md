---
marp: true
title: Plano de Ensino – Introdução a Banco de Dados
paginate: true
theme: default
---
# Aula de Manipulação de Dados em MySQL

## 1. Revisão Rápida
  - Revisão dos  os comandos `CREATE DATABASE`, `CREATE TABLE`, `INSERT INTO` e `SELECT`.

Obs.: Para quem não viu a aula anterior, execute este [script](./script.sql)

---

## 2. Filtragem de Dados com `WHERE`
  - O comando `WHERE` é usado para especificar condições que os dados devem atender para serem retornados na consulta.
- **Analogia em Português**:
  - PT: "Vamos buscar apenas os livros (produtos) que atendem a um critério específico, como preço ou nome."
- **Execução no MySQL**:
  ```sql
  -- Buscar produtos com preço menor que R$5,00
  SELECT * FROM Produtos WHERE Preco < 5.00;

  -- Buscar produtos cujo nome é 'Arroz'
  SELECT * FROM Produtos WHERE Nome = 'Arroz';
  ```

---

## 3. Atualização de Dados com `UPDATE`
  - O comando `UPDATE` é usado para modificar os dados existentes em uma tabela.
  - O comando `SET` define os novos valores.
  - O comando `WHERE` especifica quais registros devem ser atualizados.
- **Analogia em Português**:
  - PT: "Vamos corrigir informações sobre um livro (produto) na estante."
- **Execução no MySQL**:
  ```sql
  -- Atualizar o preço do produto 'Arroz' para R$6,00
  UPDATE Produtos SET Preco = 6.00 WHERE Nome = 'Arroz';
  ```

---

## 4. Exclusão de Dados com `DELETE`
  - O comando `DELETE` remove registros de uma tabela.
  - O comando `WHERE` é usado para especificar quais registros devem ser excluídos.
- **Analogia em Português**:
  - PT: "Vamos remover um livro (produto) da estante."
- **Execução no MySQL**:
  ```sql
  -- Excluir o produto 'Feijão'
  DELETE FROM Produtos WHERE Nome = 'Feijão';
  ```

---

## 5. Exercícios Práticos
- **Exercícios**:
  1. **Filtragem**: Consulte todos os produtos com preço superior a R$4,00.
  2. **Atualização**: Aumente o preço de todos os produtos em 10%.
  3. **Exclusão**: Remova todos os produtos com preço menor que R$4,00.

---
