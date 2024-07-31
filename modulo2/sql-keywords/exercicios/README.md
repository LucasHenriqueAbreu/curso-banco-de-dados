
# Exercícios de Banco de Dados com MySQL

## 1. Criação de Banco de Dados
- Crie um banco de dados chamado `Biblioteca`.

## 2. Criação de Tabela
- No banco de dados `Biblioteca`, crie uma tabela chamada `Livros` com as seguintes colunas:
  - `ID` (INT)
  - `Titulo` (VARCHAR(100))
  - `Autor` (VARCHAR(50))
  - `Preco` (DECIMAL(5,2))

## 3. Inserção de Dados
- Insira três registros na tabela `Livros` com os seguintes dados:
  1. `ID: 1, Titulo: "Dom Quixote", Autor: "Miguel de Cervantes", Preco: 34.90`
  2. `ID: 2, Titulo: "Moby Dick", Autor: "Herman Melville", Preco: 27.50`
  3. `ID: 3, Titulo: "Guerra e Paz", Autor: "Leo Tolstoy", Preco: 39.99`

## 4. Consulta Simples
- Recupere todos os registros da tabela `Livros`.

## 5. Consulta com Condição (Preço)
- Selecione todos os livros com preço menor que 30.

## 6. Consulta com Condição (Autor)
- Encontre todos os livros escritos por "Leo Tolstoy".

## 7. Consulta com Múltiplas Condições
- Selecione todos os livros que custam mais de 30 e foram escritos por "Miguel de Cervantes".

## 8. Atualização de Dados
- Atualize o preço do livro "Moby Dick" para 29.99.

## 9. Exclusão de Dados
- Remova o livro cujo título é "Guerra e Paz" da tabela `Livros`.

## 10. Contagem de Registros
- Conte o número de livros disponíveis na tabela `Livros`.

## 11. Consulta de Colunas Específicas
- Selecione apenas os títulos dos livros da tabela `Livros`.

## 12. Consulta com Alias
- Liste todos os livros, renomeando a coluna `Autor` para `Escritor`.

## 13. Inserção de Dados Adicionais
- Adicione mais dois livros à tabela `Livros` com dados à sua escolha.

## 14. Consulta com Condição (Título)
- Encontre todos os livros cujo título começa com "Dom".

## 15. Consulta de Títulos e Preços
- Liste os títulos dos livros e seus respectivos preços.

## 16. Filtragem por Autor e Preço
- Encontre todos os livros de "Herman Melville" que custam menos de 30.

## 17. Consulta com Condição Combinada
- Selecione todos os livros com preço entre 20 e 40 e autor diferente de "Miguel de Cervantes".

## 18. Atualização de Múltiplos Campos
- Atualize o autor do livro "Dom Quixote" para "Miguel de Cervantes Saavedra" e o preço para 36.50.

## 19. Inserção de Registro com ID Específico
- Insira um novo livro com `ID` 4, `Titulo: "Odisseia"`, `Autor: "Homero"`, `Preco: 25.00`.

## 20. Consulta de Dados Específicos
- Encontre o título e o preço do livro mais caro na tabela `Livros`.
