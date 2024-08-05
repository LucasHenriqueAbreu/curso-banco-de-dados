# Aula sobre Operadores em SQL

## Material auxíliar
Para realizar os exemplos desta aula, execute esse script em seu IDE de preferencia.
[Script de criação do banco](./script_auxiliar.sql)

## 1. Introdução aos Operadores em SQL
- **Objetivo**: Apresentar os diferentes tipos de operadores em SQL e suas funções.
- **Explicação Teórica**:
  - **Operadores**: Ferramentas que permitem realizar operações matemáticas, comparações e combinações de condições em consultas SQL.
- **Exemplo Analógico**: Comparar operadores com ferramentas de uma caixa de ferramentas, onde cada ferramenta (operador) tem uma função específica.

## 2. Operadores Aritméticos
- **Objetivo**: Ensinar o uso de operadores aritméticos para realizar cálculos em SQL.
- **Explicação Teórica**:
  - Os operadores aritméticos permitem realizar operações matemáticas básicas como adição, subtração, multiplicação, divisão e módulo.
- **Operadores Aritméticos**:
  - `+` : Adição
  - `-` : Subtração
  - `*` : Multiplicação
  - `/` : Divisão
  - `%` : Módulo
- **Analogia em Português**:
  - PT: "Vamos calcular o imposto sobre o preço dos produtos."
  - SQL: `SELECT nome, preco, (preco * 0.18) as imposto FROM produtos;`
- **Execução no MySQL**:
  ```sql
  SELECT nome, preco, (preco * 0.18) as imposto
  FROM produtos;
  ```

## 3. Operadores de Comparação
- **Objetivo**: Ensinar o uso de operadores de comparação para filtrar resultados.
- **Explicação Teórica**:
  - Os operadores de comparação são usados na cláusula WHERE para comparar valores.
- **Operadores de Comparação**:
  - `=` : Igual
  - `!=` ou `<>` : Diferente
  - `>` : Maior que
  - `<` : Menor que
  - `>=` : Maior ou igual a
  - `<=` : Menor ou igual a
- **Analogia em Português**:
  - PT: "Vamos encontrar todos os alunos com mais de 18 anos."
  - SQL: `SELECT nome, idade FROM estudantes WHERE idade > 18;`
- **Execução no MySQL**:
  ```sql
  SELECT nome, idade
  FROM estudantes
  WHERE idade > 18;
  ```

## 4. Operadores Lógicos
- **Objetivo**: Ensinar o uso de operadores lógicos para combinar condições em consultas.
- **Explicação Teórica**:
  - Os operadores lógicos permitem combinar múltiplas condições em uma consulta.
- **Operadores Lógicos**:
  - `AND` : Retorna verdadeiro se ambas as condições forem verdadeiras.
  - `OR` : Retorna verdadeiro se pelo menos uma das condições for verdadeira.
  - `NOT` : Retorna o valor booleano oposto da condição.
- **Analogia em Português**:
  - PT: "Vamos encontrar todos os funcionários que ganham mais de 50.000 e têm menos de 30 anos."
  - SQL: `SELECT * FROM professores WHERE salario > 50000 AND idade < 40;`
- **Execução no MySQL**:
  ```sql
  SELECT * 
  FROM professores
  WHERE salario > 50000 AND idade < 40;
  ```

## 5. Operadores Bitwise
- **Objetivo**: Apresentar operadores bitwise, embora menos usados em SQL.
- **Explicação Teórica**:
  - Operadores bitwise realizam operações a nível de bits.
- **Operadores Bitwise**:
  - `&` : E bitwise
  - `|` : OU bitwise
  - `^` : OU exclusivo bitwise
- **Analogia em Português**:
  - PT: "Vamos realizar operações bitwise em valores inteiros."
  - **Nota**: Operadores bitwise são menos comuns em SQL e não são abordados com frequência em operações de banco de dados padrão.

## 6. Perguntas e Respostas
- Abra espaço para perguntas dos alunos e esclareça quaisquer dúvidas.

## 7. Encerramento
- **Resumo**: Reiterar os principais tipos de operadores e suas funções.
- **Próximos Passos**: Explorar funções agregadas e cláusulas mais avançadas em consultas SQL.

## Materiais de Apoio
- Slides com exemplos e explicações.
- Exercícios práticos para os alunos tentarem por conta própria.

## Código SQL dos Exemplos

```sql
-- Operadores Aritméticos
SELECT nome, preco, (preco * 0.18) as imposto
FROM produtos;

-- Operadores de Comparação
SELECT nome, idade
FROM estudantes
WHERE idade > 18;

-- Operadores Lógicos
SELECT * 
FROM professores
WHERE salario > 50000 AND idade < 40;
```
