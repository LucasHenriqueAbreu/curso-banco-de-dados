# Aula de Manipulação de Dados em MySQL
Obs.: Para quem não viu a aula anterior, execute este [script](./script.sql)
## 1. Revisão Rápida
- **Objetivo**: Relembrar os conceitos anteriores.
- **Explicação**:
  - Revisar brevemente os comandos `CREATE DATABASE`, `CREATE TABLE`, `INSERT INTO` e `SELECT`.
  - Exemplo: Mostrar a estrutura da tabela `Produtos` e alguns dados inseridos.

## 2. Filtragem de Dados com `WHERE`
- **Objetivo**: Ensinar a usar o comando `WHERE` para filtrar dados.
- **Explicação Teórica**:
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

## 3. Atualização de Dados com `UPDATE`
- **Objetivo**: Ensinar a atualizar registros existentes na tabela.
- **Explicação Teórica**:
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

## 4. Exclusão de Dados com `DELETE`
- **Objetivo**: Ensinar a excluir registros da tabela.
- **Explicação Teórica**:
  - O comando `DELETE` remove registros de uma tabela.
  - O comando `WHERE` é usado para especificar quais registros devem ser excluídos.
- **Analogia em Português**:
  - PT: "Vamos remover um livro (produto) da estante."
- **Execução no MySQL**:
  ```sql
  -- Excluir o produto 'Feijão'
  DELETE FROM Produtos WHERE Nome = 'Feijão';
  ```

## 5. Exercícios Práticos
- **Objetivo**: Praticar o uso dos comandos `WHERE`, `UPDATE` e `DELETE`.
- **Exercícios**:
  1. **Filtragem**: Consulte todos os produtos com preço superior a R$4,00.
  2. **Atualização**: Aumente o preço de todos os produtos em 10%.
  3. **Exclusão**: Remova todos os produtos com preço menor que R$4,00.

## 6. Perguntas e Respostas
- **Objetivo**: Esclarecer dúvidas e reforçar o aprendizado.

## 7. Encerramento
- **Resumo**: Revisar os comandos aprendidos (`WHERE`, `UPDATE`, `DELETE`).
- **Próximos Passos**: Introdução a joins, subconsultas e funções agregadas em aulas futuras.

## Materiais de Apoio
- Slides com exemplos e explicações detalhadas.
- Documentação do MySQL para consulta adicional.
- Exercícios práticos adicionais para os alunos.
