---
marp: true
title: Plano de Ensino – Introdução a Banco de Dados
paginate: true
theme: default
---

# Aula sobre Operadores em SQL

## Material auxíliar
Para realizar os exemplos desta aula, execute esse script em seu IDE de preferencia.
[Script de criação do banco](./script_auxiliar.sql)

---

## 1. Introdução aos Operadores em SQL
- **Operadores**: Ferramentas que permitem realizar operações matemáticas, comparações e combinações de condições em consultas SQL.
- **Analogia**: Comparar operadores com ferramentas de uma caixa de ferramentas, onde cada ferramenta (operador) tem uma função específica.

---

## 2. Operadores Aritméticos
- Os operadores aritméticos permitem realizar operações matemáticas básicas como adição, subtração, multiplicação, divisão e módulo.
- **Operadores Aritméticos**:
  - `+` : Adição
  - `-` : Subtração
  - `*` : Multiplicação
  - `/` : Divisão
  - `%` : Módulo

---

- **Analogia em Português**:
  - PT: "Vamos calcular o imposto sobre o preço dos produtos."
  - SQL: `SELECT nome, preco, (preco * 0.18) as imposto FROM produtos;`
- **Execução no MySQL**:
  ```sql
  SELECT nome, preco, (preco * 0.18) as imposto
  FROM produtos;
  ```

---

## 3. Operadores de Comparação
- Os operadores de comparação são usados na cláusula WHERE para comparar valores.
- **Operadores de Comparação**:
  - `=` : Igual
  - `!=` ou `<>` : Diferente
  - `>` : Maior que
  - `<` : Menor que
  - `>=` : Maior ou igual a
  - `<=` : Menor ou igual a
  
---

- **Analogia em Português**:
  - PT: "Vamos encontrar todos os alunos com mais de 18 anos."
  - SQL: `SELECT nome, idade FROM estudantes WHERE idade > 18;`
- **Execução no MySQL**:
  ```sql
  SELECT nome, idade
  FROM estudantes
  WHERE idade > 18;
  ```

---

## 4. Operadores Lógicos
  - Os operadores lógicos permitem combinar múltiplas condições em uma consulta.
- **Operadores Lógicos**:
  - `AND` : Retorna verdadeiro se ambas as condições forem verdadeiras.
  - `OR` : Retorna verdadeiro se pelo menos uma das condições for verdadeira.
  - `NOT` : Retorna o valor booleano oposto da condição.

---

- **Analogia em Português**:
  - PT: "Vamos encontrar todos os funcionários que ganham mais de 50.000 e têm menos de 30 anos."
  - SQL: `SELECT * FROM professores WHERE salario > 50000 AND idade < 40;`
- **Execução no MySQL**:
  ```sql
  SELECT * 
  FROM professores
  WHERE salario > 50000 AND idade < 40;
  ```

---

## 6. Perguntas e Respostas
- Alguma dúvida?.

--- 

## 7. Encerramento
- **Resumo**: Reiterar os principais tipos de operadores e suas funções.
- **Próximos Passos**: Explorar funções agregadas e cláusulas mais avançadas em consultas SQL.

--- 

Quizz
https://quizizz.com/admin/quiz/66b13c3e4de2b713f14f2fef?source=quiz_share