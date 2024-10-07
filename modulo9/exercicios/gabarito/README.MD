
# Gabarito - Exercícios de Banco de Dados – ACID

## Questões Teóricas

**1.** ACID é um conjunto de quatro propriedades (Atomicidade, Consistência, Isolamento e Durabilidade) que garantem a integridade das transações em bancos de dados.

**2.** Uma transação é um conjunto de operações SQL que devem ser executadas como uma unidade. Seguir o conceito ACID garante que a transação seja confiável e não deixe o banco de dados em estado inconsistente.

**3.** Exemplo: ao transferir dinheiro entre contas bancárias, a atomicidade garante que, se houver um erro, a transação será revertida e nenhum valor será movido.

**4.** Atomicidade garante que toda a transação seja concluída ou nada aconteça. Isolamento garante que a execução de uma transação não interfira em outras transações.

**5.** Restrições comuns: `PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`, `CHECK`.

---

## Questões Práticas

**1.**
```sql
START TRANSACTION;
INSERT INTO clientes (nome, email) VALUES ('Ana Silva', 'ana.silva@example.com');
INSERT INTO pedidos (cliente_id, data_pedido) VALUES (LAST_INSERT_ID(), CURDATE());
COMMIT;
```

**2.**
```sql
CREATE TABLE produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    preco DECIMAL(10, 2) CHECK (preco > 0)
);
```

**3.**
```sql
INSERT INTO produtos (id, nome, preco) 
VALUES (1, 'Cadeira', 150.00), (2, 'Mesa', 350.00), (3, 'Sofá', -100.00), (4, 'Armário', 450.00), (5, 'Estante', 250.00);
```

**4.**
```sql
START TRANSACTION;
UPDATE estoque 
SET quantidade = quantidade - 5 
WHERE produto_id = 1;

SELECT quantidade 
FROM estoque 
WHERE produto_id = 1;

ROLLBACK;  -- se a quantidade for insuficiente
COMMIT;    -- se a quantidade for suficiente
```

**5.**
```sql
START TRANSACTION;
INSERT INTO pedidos (cliente_id, data_pedido) VALUES (3, CURDATE());
COMMIT;

SELECT * FROM pedidos WHERE cliente_id = 3;
```
