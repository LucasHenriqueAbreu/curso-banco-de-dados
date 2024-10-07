
# Consistência (Consistency)

## O que é Consistência?

A **Consistência** é a segunda propriedade do conceito **ACID** em sistemas de banco de dados. Ela garante que uma transação leve o banco de dados de um estado válido para outro estado válido, respeitando todas as regras de integridade definidas (como chaves primárias, chaves estrangeiras, restrições `CHECK`, etc.).

Isso significa que, após a conclusão de uma transação, o banco de dados deve estar em um estado consistente, sem violar as regras estabelecidas. Se alguma operação da transação tentar violar essas regras, a transação será revertida.

## Exemplo de Mundo Real

Considere uma aplicação de reserva de passagens aéreas:

1. O sistema precisa garantir que não sejam vendidos mais assentos do que o número disponível em um voo.
2. Ao confirmar uma reserva, o sistema deve verificar se ainda há assentos disponíveis e, se sim, reduzir o número de assentos livres.

Se dois usuários tentarem reservar o último assento ao mesmo tempo, a consistência garante que apenas um deles conseguirá realizar a compra. Se ambos tentassem reservar simultaneamente, um deles falharia, evitando assim a superlotação do voo.

### Problema que a Consistência Resolve

Imagine que você está em um sistema de vendas online e tenta comprar um item em estoque. Se o estoque já estiver esgotado, a consistência garante que a transação não será concluída, e o item não será vendido duas vezes. Sem a consistência, várias pessoas poderiam "comprar" o mesmo item, resultando em problemas de inventário e conflitos no sistema.

### Exemplo SQL de Consistência

Aqui está um exemplo que demonstra a consistência no banco de dados. Suponha que temos uma tabela de `estoque` e uma de `vendas`. A consistência deve garantir que nunca vendamos mais do que há no estoque:

```sql
START TRANSACTION;

-- Verificar o estoque disponível
SELECT quantidade FROM estoque WHERE produto_id = 123;

-- Subtrair a quantidade vendida se houver estoque suficiente
UPDATE estoque
SET quantidade = quantidade - 1
WHERE produto_id = 123 AND quantidade > 0;

-- Inserir o registro de venda
INSERT INTO vendas (produto_id, data_venda, quantidade)
VALUES (123, '2024-10-07', 1);

-- Confirmar a transação
COMMIT;

-- Se algo der errado
ROLLBACK;
```

Se o estoque não tiver a quantidade disponível, a transação será revertida e a venda não será processada. Isso mantém a consistência do banco de dados, garantindo que o estoque nunca fique negativo.

## Benefícios da Consistência

- **Integridade dos dados**: A consistência garante que as regras de integridade do banco de dados sejam sempre respeitadas.
- **Evita dados inválidos**: Se uma transação tentar inserir dados que violem as restrições, ela será automaticamente revertida.
- **Facilita a correção de erros**: Se qualquer operação dentro de uma transação falhar, a transação será revertida, protegendo o banco de dados contra inconsistências.

## Conclusão

A consistência é fundamental para garantir que o banco de dados esteja sempre em um estado válido após cada transação. Ela garante que todas as regras de integridade e restrições definidas no banco de dados sejam aplicadas, evitando problemas de dados corrompidos ou inválidos.
