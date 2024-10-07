
# Aula: ACID em Banco de Dados

## 1. Introdução ao Conceito ACID
- **Objetivo**: Explicar o conceito de ACID e sua importância em sistemas de banco de dados.
- **Explicação Teórica**:
  - **ACID**: Conjunto de propriedades que garantem a confiabilidade e a integridade de uma transação no banco de dados. ACID é composto por quatro propriedades:
    - **Atomicidade**
    - **Consistência**
    - **Isolamento**
    - **Durabilidade**
  - **Transações**: Unidade de trabalho que agrupa uma ou mais operações, garantindo que o banco de dados permaneça consistente.
  - **Importância**: O conceito ACID garante que os dados estejam protegidos contra inconsistências e falhas no sistema.

---

## 2. Propriedade da Atomicidade
- **Objetivo**: Entender o que é atomicidade e sua aplicação em banco de dados.
- **Explicação Teórica**:
  - **Atomicidade**: Garante que todas as operações de uma transação sejam completadas com sucesso. Se uma operação falha, a transação é revertida.
- **Exemplo de Mundo Real**:
  - Cenário: Transferência bancária entre duas contas. Se o débito for feito, mas o crédito falhar, a operação será revertida para garantir a integridade dos dados.
  
- **Execução no MySQL**:
/```sql
START TRANSACTION;
UPDATE contas SET saldo = saldo - 100 WHERE conta_id = 1;
UPDATE contas SET saldo = saldo + 100 WHERE conta_id = 2;
COMMIT;
/```

---

## 3. Propriedade da Consistência
- **Objetivo**: Explicar a consistência e como ela garante a integridade dos dados no banco de dados.
- **Explicação Teórica**:
  - **Consistência**: Garante que uma transação leve o banco de dados de um estado válido para outro estado válido, respeitando todas as restrições, como:
    - **Tipos de Dados**: Garante que os dados inseridos em uma tabela sejam do tipo correto. Exemplo: Não permitir que uma string seja inserida em uma coluna que exige um valor numérico.
    - **Restrições de Chaves**: 
      - **PRIMARY KEY**: Garante que cada registro em uma tabela seja único e identificável.
      - **FOREIGN KEY**: Garante a integridade referencial, assegurando que valores em uma tabela estejam presentes em outra tabela.
    - **Restrições de Integridade**:
      - **CHECK**: Garante que os valores de uma coluna atendam a uma condição específica. Exemplo: Um campo de idade deve ser maior que 0.
      - **NOT NULL**: Garante que uma coluna não aceite valores nulos.
  
- **Exemplo de Mundo Real**:
  - Cenário: Registro de uma nova venda em um sistema de estoque. O banco de dados precisa garantir que o ID do produto exista na tabela de produtos, e que a quantidade disponível seja maior que zero, mantendo o sistema em um estado consistente.
  
- **Execução no MySQL**:
/```sql
CREATE TABLE clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    idade INT CHECK (idade >= 0)
);

CREATE TABLE pedidos (
    id INT PRIMARY KEY,
    cliente_id INT,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

INSERT INTO clientes (id, nome, idade) VALUES (1, 'João', 25);
/```

---

## 4. Propriedade do Isolamento
- **Objetivo**: Entender a importância do isolamento em transações simultâneas.
- **Explicação Teórica**:
  - **Isolamento**: Garante que transações concorrentes não interfiram entre si. Cada transação deve ser executada como se fosse a única operação no sistema.
  
- **Exemplo de Mundo Real**:
  - Cenário: Dois clientes comprando o mesmo produto ao mesmo tempo. O sistema deve garantir que apenas uma transação seja processada, evitando problemas de estoque negativo.

---

## 5. Propriedade da Durabilidade
- **Objetivo**: Explicar como a durabilidade garante a persistência dos dados.
- **Explicação Teórica**:
  - **Durabilidade**: Garante que, após uma transação ser confirmada (commit), seus efeitos sejam permanentes, mesmo em caso de falhas de sistema.
  
- **Exemplo de Mundo Real**:
  - Cenário: Após finalizar um pagamento, as alterações feitas no banco de dados (estoque, histórico de pedidos) permanecem mesmo que o sistema sofra uma falha após a confirmação.
  
- **Execução no MySQL**:
/```sql
COMMIT;
/```

---

## 6. O que é uma Transação em Banco de Dados?
- **Objetivo**: Introduzir o conceito de transações no contexto de ACID.
- **Explicação Teórica**:
  - **Transação**: Um conjunto de operações que são executadas como uma única unidade de trabalho. Garante que o banco de dados permaneça consistente.
  
- **Exemplo de Mundo Real**:
  - Cenário: Registro de um novo cliente no sistema de uma loja online, que inclui a inserção de dados pessoais e de pagamento em diferentes tabelas.

- **Execução no MySQL**:
/```sql
START TRANSACTION;
INSERT INTO clientes (nome, email) VALUES ('João', 'joao@example.com');
INSERT INTO pagamentos (cliente_id, valor) VALUES (LAST_INSERT_ID(), 150);
COMMIT;
/```

---

## 7. Exercícios Práticos
- **Exercícios**:
  1. Crie uma transação que inclua a inserção de um novo cliente e um novo pedido no banco de dados.
  2. Crie uma tabela `produtos` com uma restrição `CHECK` para garantir que o preço seja maior que zero.
  3. Simule uma falha durante uma transação e mostre como o banco de dados pode reverter as mudanças usando `ROLLBACK`.

---

## 8. Considerações Finais
- **Resumo**: Relembrar os conceitos e a importância das propriedades ACID para a confiabilidade dos dados.
- **Próximos Passos**: Explorar outras técnicas de gerenciamento de transações e entender como o ACID é implementado em diferentes sistemas de banco de dados.

---

## Materiais de Apoio
- [Exercícios Práticos](../exercicios/README.md)

---