# Exercícios Práticos: Restrições de Dados em SQL

## 1. Criação de Tabela com `PRIMARY KEY`
**Exercício**: Crie uma tabela chamada `Clientes` com as colunas `ClienteID` (inteiro, chave primária), `Nome` (texto), e `Email` (texto).

---

## 2. Adicionando uma `FOREIGN KEY`
**Exercício**: Crie uma tabela `Pedidos` com as colunas `PedidoID` (inteiro, chave primária), `ClienteID` (inteiro, chave estrangeira que referencia `ClienteID` na tabela `Clientes`), e `DataPedido` (data).

---

## 3. Criando uma Tabela com `UNIQUE`
**Exercício**: Crie uma tabela `Produtos` com as colunas `ProdutoID` (inteiro, chave primária), `Nome` (texto), e `CodigoBarras` (texto, único).

---

## 4. Aplicando a Restrição `NOT NULL`
**Exercício**: Crie uma tabela `Funcionarios` onde o `Nome` e `Salario` sejam obrigatórios (não nulos).

---

## 5. Usando a Restrição `CHECK`
**Exercício**: Crie uma tabela `Contas` com as colunas `ContaID`, `Saldo` (o saldo deve ser sempre maior ou igual a zero), e `TipoConta`.

---

## 6. Adicionando uma `PRIMARY KEY` a uma Tabela Existente
**Exercício**: Adicione uma chave primária à coluna `ID` de uma tabela chamada `Estoque`.

---

## 7. Adicionando uma `FOREIGN KEY` a uma Tabela Existente
**Exercício**: Adicione uma chave estrangeira à coluna `ClienteID` na tabela `Faturas`, referenciando `ClienteID` na tabela `Clientes`.

---

## 8. Adicionando a Restrição `UNIQUE` a uma Tabela Existente
**Exercício**: Adicione a restrição `UNIQUE` à coluna `Email` na tabela `Clientes`.

---

## 9. Removendo uma Restrição `CHECK`
**Exercício**: Remova a restrição `CHECK` da coluna `Saldo` na tabela `Contas`.

*Nota: Substitua `nome_da_restrição` pelo nome real da restrição, que deve ser identificado no banco de dados.*

---

## 10. Criando uma Tabela com `PRIMARY KEY`, `UNIQUE`, `NOT NULL`, e `CHECK`
**Exercício**: Crie uma tabela `Usuarios` com as colunas `UsuarioID` (inteiro, chave primária), `Nome` (texto, obrigatório), `Email` (texto, único), e `Idade` (inteiro, deve ser maior que 18).

---
