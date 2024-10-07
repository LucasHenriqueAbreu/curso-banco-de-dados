
# Atomicidade (Atomicity)

## O que é Atomicidade?

A **Atomicidade** é a primeira propriedade do conceito **ACID** em sistemas de banco de dados. Ela garante que uma transação seja tratada como uma unidade indivisível de trabalho. Ou seja, uma transação deve ser **"tudo ou nada"**: todas as operações dentro de uma transação precisam ser completadas com sucesso, ou nenhuma delas será aplicada ao banco de dados. Se qualquer operação falhar, o sistema deve reverter todas as alterações realizadas até aquele ponto, garantindo que o banco de dados não fique em um estado inconsistente.

Em termos práticos, a atomicidade protege contra operações parciais ou incompletas que possam causar corrupção de dados.

## Exemplo de Mundo Real

Imagine que você está realizando uma transferência bancária de uma conta para outra. Esse processo envolve várias operações:

1. Debitar uma quantia da conta de origem.
2. Creditar a mesma quantia na conta de destino.

Se a primeira operação (débito) for bem-sucedida, mas a segunda (crédito) falhar, o banco de dados deve garantir que o débito também seja revertido, para que o dinheiro não "desapareça". A atomicidade assegura que ambas as operações sejam concluídas ou que nenhuma delas seja aplicada, protegendo a integridade da transação.

### Problema que a Atomicidade Resolve

Vamos considerar um problema comum em sistemas de pagamento:

- Você está comprando um produto em uma loja online.
- A loja debita o valor do seu cartão de crédito, mas ocorre uma falha na conexão entre a loja e o sistema de estoque.
- O produto não é registrado como vendido, mas o pagamento já foi processado.

Nesse caso, a atomicidade garantiria que, se o registro do pedido falhar, o débito no cartão também seja revertido. Isso impede que o cliente pague por algo que não foi entregue, e que a loja tenha problemas com pedidos não registrados.

### Exemplo SQL de Atomicidade

Suponha que você esteja inserindo dados em duas tabelas relacionadas: uma de `pedidos` e outra de `itens_pedido`. Se a inserção no `itens_pedido` falhar, a transação inteira será revertida.

```sql
START TRANSACTION;

-- Inserir um novo pedido
INSERT INTO pedidos (id_pedido, data_pedido, cliente_id)
VALUES (1, '2024-10-07', 123);

-- Inserir os itens do pedido
INSERT INTO itens_pedido (id_item, id_pedido, produto_id, quantidade)
VALUES (1, 1, 456, 2);

-- Confirmar a transação
COMMIT;

-- Se algo der errado
ROLLBACK;
```

Se qualquer uma dessas consultas falhar (por exemplo, por uma violação de integridade), o comando `ROLLBACK` reverterá todas as alterações, garantindo que o pedido incompleto não fique no banco de dados.

## Benefícios da Atomicidade

- **Evita dados corrompidos ou inconsistentes**: A atomicidade garante que o banco de dados não seja afetado por falhas parciais em transações.
- **Facilita o controle de falhas**: Em caso de falhas, todas as alterações são revertidas, mantendo o banco de dados em um estado limpo.
- **Protege transações complexas**: Em operações que envolvem várias etapas, como transferências bancárias ou compras online, a atomicidade assegura que todas as etapas sejam concluídas.

## Conclusão

A atomicidade é uma propriedade crítica que evita problemas comuns em sistemas de banco de dados, como dados parciais ou transações incompletas. Ao garantir que todas as operações em uma transação sejam concluídas ou revertidas, a atomicidade protege a integridade e a confiabilidade dos dados.
