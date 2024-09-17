---
marp: true
title: Plano de Ensino – Introdução a Banco de Dados
paginate: true
theme: default
---

# Aula: Subconsultas em SQL

[Script para aula](./banco_script.sql)

## 1. Subconsultas
  - **Subconsultas**: Também conhecidas como consultas internas, são consultas SQL colocadas dentro de outra consulta.
  - Podem ser usadas para isolar lógicas complexas ou obter resultados intermediários que podem ser referenciados na consulta externa.

---

- **Exemplo Básico**:
  - "Listar personagens que têm nível superior à média de todos os personagens."
  
  ```sql
  SELECT nomepersonagem, level
  FROM personagens
  WHERE level > (SELECT AVG(level) FROM personagens);
  ```

---

## 2. Subconsultas Aninhadas
  - **Subconsultas Aninhadas**: São subconsultas inseridas dentro de outra subconsulta. Essas subconsultas podem ser usadas em várias partes de uma consulta SQL, como `FROM` e `WHERE`.
  - Não envolvem correlação com a consulta externa (ou seja, não dependem de valores da consulta principal).
  - Utilizam valores independentes das tabelas da consulta principal.

---

### Exemplos de Uso:

#### **Subconsulta Aninhada no `WHERE`**:
  - "Listar personagens cujo nível é superior à média dos personagens da raça 'Elfo'."

  ```sql
  SELECT nomepersonagem, level
  FROM personagens
  WHERE level > (
      SELECT AVG(level) 
      FROM personagens 
      WHERE racaid = (SELECT racaid FROM racas WHERE nomeraca = 'elfo')
  );
  ```
---

#### **Subconsulta Aninhada no `FROM`**:
  - "Mostrar a média de poder dos personagens de cada raça."

  ```sql
  SELECT subquery.racaid, subquery.mediapoder
  FROM (
      SELECT racaid, AVG(poder) AS mediapoder
      FROM personagens
      GROUP BY racaid
  ) AS subquery;
  ```

---

## 3. Subconsultas Correlacionadas
  - **Subconsultas Correlacionadas**: São subconsultas que utilizam valores da consulta externa para serem avaliadas. São recalculadas para cada linha processada pela consulta principal.

---

### Exemplos de Uso:

#### **Subconsulta Correlacionada no `SELECT`**:
  - "Mostrar o nome dos personagens e a média de poder dos personagens da mesma raça."

  ```sql
  SELECT nomepersonagem, 
         (SELECT AVG(p2.poder) 
          FROM personagens p2 
          WHERE p1.racaid = p2.racaid) AS mediapoder_raca
  FROM personagens p1;
  ```
---

#### **Subconsulta Correlacionada no `FROM`**:
  - "Listar as raças com o poder médio de seus personagens, calculado dinamicamente."

  ```sql
  SELECT subquery.racaid, subquery.mediapoder
  FROM (
      SELECT racaid, AVG(p1.poder) AS mediapoder
      FROM personagens p1
      WHERE p1.poder > (
          SELECT AVG(p2.poder)
          FROM personagens p2
          WHERE p1.racaid = p2.racaid
      )
      GROUP BY racaid
  ) AS subquery;
  ```

---

#### **Subconsulta Correlacionada no `WHERE`**:
  - "Mostrar os personagens cujo poder é maior do que o poder médio dos personagens da mesma raça."

  ```sql
  SELECT nomepersonagem, poder
  FROM personagens p1
  WHERE poder > (
      SELECT AVG(p2.poder) 
      FROM personagens p2 
      WHERE p1.racaid = p2.racaid
  );
  ```

---

#### **Subconsulta Correlacionada no `HAVING`**:
  - "Listar as raças que têm um nível médio superior ao nível médio de todos os personagens de outras raças."

  ```sql
  SELECT nomeraca, AVG(level) AS nivel_medio
  FROM personagens p
  JOIN racas r ON p.racaid = r.racaid
  GROUP BY nomeraca
  HAVING AVG(p.level) > (
      SELECT AVG(p2.level)
      FROM personagens p2
      WHERE p2.racaid != p.racaid
  );
  ```

---

## 4. Considerações Finais
- **Explicação**:
  - Subconsultas podem impactar o desempenho dependendo da complexidade e quantidade de dados.
  - Sempre que possível, compare a eficiência de subconsultas com `JOIN` para otimização de consultas.

---

## 5. Exercícios Práticos

[Quizz](https://quizizz.com/admin/quiz/66df6c83918d87c0de877ad4?source=quiz_share)

### **Exercício 1: Subconsulta Simples**
Liste todos os personagens cujo poder é maior que a média de poder de todos os personagens.

### **Exercício 2: Subconsulta Aninhada no `WHERE`**
Liste personagens cujo nível é maior que a média dos personagens da raça "Humano" e que possuem um poder superior à média de poder dos personagens da raça "Orc".

### **Exercício 3: Subconsulta Correlacionada no `WHERE`**
Liste todos os personagens que possuem um nível superior ao nível médio de outros personagens da mesma raça.

---

## 6. Perguntas e Respostas

---

## 7. Encerramento
- **Resumo**: Revisar os conceitos de subconsultas simples, aninhadas e correlacionadas, com seus usos no `SELECT`, `FROM`, `WHERE`, e `HAVING`.
- **Próximos Passos**: Explorar mais sobre otimização de consultas e comparar subconsultas com `JOIN`.
