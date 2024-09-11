# Trabalho 3

# Desenvolvimento de Nova Rotina e Relatório

## Cenário
Você está trabalhando como desenvolvedor(a) em uma empresa de software e o sistema já está em produção. Seu time foi designado para implementar uma nova funcionalidade de **cupons de desconto**, que é a primeira de várias tarefas necessárias para a entrega completa dessa nova funcionalidade.

Aqui está o script de criação para gerar uma base em sua máquina. Utilize o script abaixo para criar as tabelas e povoar com dados iniciais.

## Script de Criação do Banco de Dados

```sql
-- Criação da tabela de clientes
CREATE TABLE clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255)
);

-- Criação da tabela de produtos
CREATE TABLE produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    preco DECIMAL(10, 2)
);

-- Criação da tabela de pedidos
CREATE TABLE pedidos (
    id INT PRIMARY KEY,
    cliente_id INT,
    data_pedido DATE,
    valor_total DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

-- Criação da tabela de pagamentos
CREATE TABLE pagamentos (
    id INT PRIMARY KEY,
    pedido_id INT,
    valor_pago DECIMAL(10, 2),
    data_pagamento DATE,
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id)
);
```

## Script de Backup dos Dados Iniciais

```sql
-- Inserção de dados na tabela clientes
INSERT INTO clientes (id, nome, email) VALUES
(1, 'João Silva', 'joao.silva@email.com'),
(2, 'Maria Souza', 'maria.souza@email.com'),
(3, 'Carlos Almeida', 'carlos.almeida@email.com');

-- Inserção de dados na tabela produtos
INSERT INTO produtos (id, nome, preco) VALUES
(1, 'Notebook', 3500.00),
(2, 'Smartphone', 2000.00),
(3, 'Teclado', 150.00);

-- Inserção de dados na tabela pedidos
INSERT INTO pedidos (id, cliente_id, data_pedido, valor_total) VALUES
(1, 1, '2023-09-01', 3650.00),
(2, 2, '2023-09-02', 2000.00),
(3, 3, '2023-09-03', 150.00);

-- Inserção de dados na tabela pagamentos
INSERT INTO pagamentos (id, pedido_id, valor_pago, data_pagamento) VALUES
(1, 1, 3650.00, '2023-09-04'),
(2, 2, 2000.00, '2023-09-05'),
(3, 3, 150.00, '2023-09-06');
```

---

## Tarefa 1: Desenvolvimento da Rotina de Cupons de Desconto

Sua primeira tarefa é projetar e desenvolver a funcionalidade de cupons de desconto, criando as tabelas necessárias e relacionando-as com as tabelas existentes no banco de dados. Essa funcionalidade faz parte de uma nova iniciativa do sistema, onde cupons poderão ser aplicados em pedidos, oferecendo descontos para os clientes. A funcionalidade de cupons será entregue em partes, e esta tarefa é a primeira de muitas.

### Descrição da Tarefa pelo Analista de Sistemas:

A empresa decidiu implementar um sistema de **cupons de desconto**, onde cada cupom poderá ser usado por clientes para obter um percentual de desconto em seus pedidos. Sua tarefa é criar as seguintes tabelas e relacioná-las ao sistema existente:

1. **Tabela Cupons**:
    - `id` (INT) – Identificador único do cupom.
    - `codigo` (VARCHAR) – Código do cupom.
    - `percentual_desconto` (DECIMAL) – Percentual de desconto aplicado.
    - `data_expiracao` (DATE) – Data de validade do cupom.
    
2. **Tabela Uso de Cupons**:
    - `id` (INT) – Identificador único do uso do cupom.
    - `pedido_id` (INT) – Referência ao pedido em que o cupom foi utilizado.
    - `cupom_id` (INT) – Referência ao cupom utilizado.
    - `data_uso` (DATE) – Data em que o cupom foi utilizado.
    
Você deve garantir que essas tabelas estejam relacionadas às tabelas de pedidos e que os cupons possam ser associados corretamente a um pedido. Após isso, insira dados fictícios nas tabelas para simular cupons que expiram e cupons sendo utilizados em pedidos existentes.

---

## Tarefa 2: Relatório Gerencial sobre Cupons Utilizados

Agora que a rotina de cupons de desconto já foi implementada e está em produção, a equipe de marketing solicitou um relatório gerencial. Este relatório tem o objetivo de coletar dados sobre o uso de cupons para apoiar a tomada de decisões estratégicas. O foco é entender quantos cupons foram utilizados, o valor total economizado pelos clientes e a relação entre cupons e os pedidos.

### Descrição da Tarefa:

Crie um relatório SQL que mostre:

1. O código do cupom.
2. O nome do cliente que utilizou o cupom.
3. A data de uso do cupom.
4. O número do pedido em que o cupom foi aplicado.
5. O valor total do pedido antes do desconto.
6. O percentual de desconto do cupom.
7. O valor total final do pedido com o desconto aplicado.

O relatório precisa ser agrupado por código do cupom e deve exibir o número total de pedidos que utilizaram cada cupom. Além disso, ele deve mostrar o valor total de descontos aplicados para cada cupom.

**Dica**: Utilize **INNER JOIN**, **LEFT JOIN** e **RIGHT JOIN** para unir as tabelas de cupons, pedidos, clientes e pagamentos, a fim de gerar as informações necessárias para o relatório.

---

## Entregáveis:

1. **Script SQL**:
    - Criação das tabelas `cupons` e `uso_cupons` com as chaves estrangeiras relacionadas às tabelas existentes.
    - Inserção de dados de teste para as tabelas de cupons e uso de cupons.

2. **Relatório SQL**:
    - Script SQL para gerar o relatório detalhado de cupons utilizados com os dados de clientes, pedidos e valores totais.

3. **Explicação**:
    - Uma breve explicação das escolhas feitas para criar os relacionamentos entre as tabelas e como os diferentes tipos de `JOINs` foram utilizados no relatório.



# Desenvolvimento de Rotina e Relatório para Restaurante

## Cenário
O sistema de gestão do restaurante está em produção, e agora foi identificada a necessidade de uma nova funcionalidade para gerenciar **reservas de mesas**. Esta funcionalidade é uma nova atividade que está sendo adicionada ao sistema existente, e sua primeira tarefa é implementar essa rotina.

Aqui está o script de criação para gerar a base do sistema de restaurante em sua máquina. Utilize o script abaixo para criar as tabelas e povoar com dados iniciais.

## Script de Criação do Banco de Dados

```sql
-- Criação da tabela de clientes
CREATE TABLE clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    telefone VARCHAR(20)
);

-- Criação da tabela de mesas
CREATE TABLE mesas (
    id INT PRIMARY KEY,
    numero INT,
    capacidade INT
);

-- Criação da tabela de pedidos
CREATE TABLE pedidos (
    id INT PRIMARY KEY,
    cliente_id INT,
    mesa_id INT,
    data_pedido DATE,
    valor_total DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id),
    FOREIGN KEY (mesa_id) REFERENCES mesas(id)
);

-- Criação da tabela de pagamentos
CREATE TABLE pagamentos (
    id INT PRIMARY KEY,
    pedido_id INT,
    valor_pago DECIMAL(10, 2),
    data_pagamento DATE,
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id)
);
```

## Script de Backup dos Dados Iniciais

```sql
-- Inserção de dados na tabela clientes
INSERT INTO clientes (id, nome, telefone) VALUES
(1, 'João Silva', '555-1234'),
(2, 'Maria Souza', '555-5678'),
(3, 'Carlos Almeida', '555-8765');

-- Inserção de dados na tabela mesas
INSERT INTO mesas (id, numero, capacidade) VALUES
(1, 1, 4),
(2, 2, 2),
(3, 3, 6);

-- Inserção de dados na tabela pedidos
INSERT INTO pedidos (id, cliente_id, mesa_id, data_pedido, valor_total) VALUES
(1, 1, 1, '2023-09-01', 120.00),
(2, 2, 2, '2023-09-02', 80.00),
(3, 3, 3, '2023-09-03', 200.00);

-- Inserção de dados na tabela pagamentos
INSERT INTO pagamentos (id, pedido_id, valor_pago, data_pagamento) VALUES
(1, 1, 120.00, '2023-09-04'),
(2, 2, 80.00, '2023-09-05'),
(3, 3, 200.00, '2023-09-06');
```

---

## Tarefa 1: Desenvolvimento da Rotina de Reservas de Mesas

Sua primeira tarefa é projetar e desenvolver a funcionalidade de **reserva de mesas** no sistema de restaurante, criando as tabelas necessárias e relacionando-as com as tabelas existentes no banco de dados. Esta funcionalidade será essencial para gerenciar as reservas de clientes, garantindo que cada reserva esteja associada a uma mesa específica e a um cliente.

### Descrição da Tarefa pelo Analista de Sistemas:

O restaurante precisa de uma funcionalidade para permitir que os clientes reservem mesas com antecedência. Sua tarefa é implementar o sistema de reservas da seguinte forma:

1. **Tabela Reservas**:
    - `id` (INT) – Identificador único da reserva.
    - `cliente_id` (INT) – Referência ao cliente que fez a reserva.
    - `mesa_id` (INT) – Referência à mesa reservada.
    - `data_reserva` (DATE) – Data da reserva.
    - `hora_reserva` (TIME) – Hora da reserva.
    - `quantidade_pessoas` (INT) – Número de pessoas para a reserva.

Após criar essa rotina, insira dados de teste simulando reservas de clientes em diferentes dias e horários.

---

## Tarefa 2: Relatório Gerencial de Reservas

Agora que a rotina de reserva de mesas já está implementada e rodando no sistema, o gerente do restaurante solicitou um **relatório gerencial** para analisar o uso das mesas. Este relatório será essencial para tomar decisões sobre mudanças no layout do restaurante ou ajustes na disponibilidade de mesas.

### Descrição da Tarefa:

Crie um relatório SQL que mostre:

1. O nome do cliente que fez a reserva.
2. O número da mesa reservada.
3. A capacidade da mesa.
4. A data e hora da reserva.
5. O número de pessoas na reserva.
6. O valor total dos pedidos feitos pelo cliente (se houver).

O relatório deve ser agrupado por cliente e mostrar todas as reservas feitas, bem como os pedidos relacionados a cada cliente, caso tenham sido realizados.

**Dica**: Utilize **INNER JOIN**, **LEFT JOIN** e **RIGHT JOIN** para relacionar as tabelas de clientes, mesas, reservas e pedidos.

---

## Entregáveis:

1. **Script SQL**:
    - Criação das tabelas `reservas` com as chaves estrangeiras relacionadas às tabelas existentes.
    - Inserção de dados de teste para as tabelas de reservas.

2. **Relatório SQL**:
    - Script SQL para gerar o relatório detalhado de reservas de mesas com as informações dos clientes, mesas, e valores de pedidos (se houver).

3. **Explicação**:
    - Uma breve explicação das escolhas feitas para criar os relacionamentos entre as tabelas e como os diferentes tipos de `JOINs` foram utilizados no relatório.

---
