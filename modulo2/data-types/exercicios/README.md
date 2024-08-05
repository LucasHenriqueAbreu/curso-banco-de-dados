# Exercícios sobre Tipos de Dados em SQL

## 1. Criação de Tabelas com Tipos de Dados Diversos

1. **Crie uma tabela chamada `livros` que tenha as seguintes colunas:**
    - `id` (inteiro)
    - `titulo` (string de comprimento variável até 100 caracteres)
    - `autor` (string de comprimento variável até 50 caracteres)
    - `preco` (decimal com 5 dígitos no total, dos quais 2 são decimais)
    - `data_publicacao` (data)

2. **Crie uma tabela chamada `clientes` que tenha as seguintes colunas:**
    - `id` (inteiro)
    - `nome` (string de comprimento variável até 50 caracteres)
    - `data_nascimento` (data)
    - `email` (string de comprimento variável até 100 caracteres)
    - `ativo` (booleano)

3. **Crie uma tabela chamada `produtos` que tenha as seguintes colunas:**
    - `id` (inteiro)
    - `nome` (string de comprimento variável até 50 caracteres)
    - `categoria` (string de comprimento fixo de 20 caracteres)
    - `preco` (decimal com 7 dígitos no total, dos quais 2 são decimais)
    - `estoque` (inteiro)

4. **Crie uma tabela chamada `vendas` que tenha as seguintes colunas:**
    - `id` (inteiro)
    - `id_produto` (inteiro)
    - `quantidade` (inteiro)
    - `data_venda` (data e hora)

5. **Crie uma tabela chamada `fornecedores` que tenha as seguintes colunas:**
    - `id` (inteiro)
    - `nome` (string de comprimento variável até 100 caracteres)
    - `telefone` (string de comprimento fixo de 15 caracteres)
    - `endereco` (string de comprimento variável até 200 caracteres)

## 2. Inserção de Dados nas Tabelas

6. **Insira um registro na tabela `livros` com os seguintes dados:**
    - `id`: 1
    - `titulo`: "SQL para Iniciantes"
    - `autor`: "João Silva"
    - `preco`: 45.50
    - `data_publicacao`: "2023-07-31"

7. **Insira dois registros na tabela `clientes` com os seguintes dados:**
    - `id`: 1, `nome`: "Maria Oliveira", `data_nascimento`: "1990-05-20", `email`: "maria@example.com", `ativo`: TRUE
    - `id`: 2, `nome`: "Pedro Santos", `data_nascimento`: "1985-11-15", `email`: "pedro@example.com", `ativo`: FALSE

8. **Insira um registro na tabela `produtos` com os seguintes dados:**
    - `id`: 1
    - `nome`: "Notebook"
    - `categoria`: "Eletronicos"
    - `preco`: 2500.99
    - `estoque`: 50

9. **Insira dois registros na tabela `vendas` com os seguintes dados:**
    - `id`: 1, `id_produto`: 1, `quantidade`: 2, `data_venda`: "2023-07-31 10:30:00"
    - `id`: 2, `id_produto`: 1, `quantidade`: 1, `data_venda`: "2023-07-31 14:45:00"

10. **Insira um registro na tabela `fornecedores` com os seguintes dados:**
    - `id`: 1
    - `nome`: "Fornecedor A"
    - `telefone`: "123456789"
    - `endereco`: "Rua A, 100, São Paulo, SP"
