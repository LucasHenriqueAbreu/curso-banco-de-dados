# O que é uma Transação em Banco de Dados?

Uma **transação** em banco de dados é uma sequência de operações que são executadas como uma unidade lógica. Uma transação pode incluir operações de leitura, escrita, atualização e exclusão de dados no banco de dados. O objetivo de uma transação é garantir que todas essas operações sejam executadas de maneira bem-sucedida e que o banco de dados permaneça em um estado consistente.

## Propriedades das Transações (ACID)

As transações seguem as propriedades **ACID**:

1. **Atomicidade**: Todas as operações da transação devem ser concluídas com sucesso. Se qualquer operação falhar, a transação deve ser revertida para o estado original.
2. **Consistência**: A transação deve levar o banco de dados de um estado válido a outro estado válido, mantendo a integridade dos dados.
3. **Isolamento**: As transações não devem interferir entre si. A execução de uma transação não deve ser visível para outra até que seja concluída.
4. **Durabilidade**: Uma vez que uma transação é confirmada (committed), seus efeitos são persistentes no banco de dados, mesmo em caso de falha.

## Exemplo de Transação

Vamos considerar um cenário bancário simples em que uma pessoa transfere dinheiro de uma conta para outra. Isso envolve duas operações:

1. Debitar o valor da conta de origem.
2. Creditar o valor na conta de destino.

Essas duas operações devem ser executadas como uma única transação, pois se uma delas falhar (por exemplo, o débito foi feito, mas o crédito falhou), o sistema ficaria inconsistente.

Aqui está um exemplo SQL de uma transação:

```sql
START TRANSACTION;

-- Debitar R$ 100,00 da conta de origem
UPDATE contas
SET saldo = saldo - 100
WHERE conta_id = 1;

-- Creditar R$ 100,00 na conta de destino
UPDATE contas
SET saldo = saldo + 100
WHERE conta_id = 2;

-- Confirmar a transação para tornar as alterações permanentes
COMMIT;
```

Neste exemplo:

- **START TRANSACTION**: Inicia a transação.
- **UPDATE**: Realiza as operações de débito e crédito.
- **COMMIT**: Finaliza a transação, confirmando as mudanças e garantindo que sejam permanentes.

Se algo der errado durante a transação (por exemplo, a operação de crédito falhar), podemos reverter todas as alterações feitas usando o comando `ROLLBACK`, como mostrado a seguir:

```sql
ROLLBACK;
```

## Exemplo de Mundo Real

Considere uma loja online onde um cliente realiza uma compra. As operações envolvidas podem incluir:

- Subtrair o estoque do produto.
- Registrar o pagamento.
- Atualizar o status do pedido.

Essas operações precisam ser tratadas como uma única transação. Se o pagamento falhar, o estoque não deve ser atualizado e o status do pedido não deve mudar.

## Problemas Resolvidos pelas Transações

1. **Inconsistência de Dados**: Sem transações, se apenas parte das operações de uma tarefa for executada, o banco de dados pode ficar inconsistente. Exemplo: um valor foi debitado, mas não creditado em outra conta.
   
2. **Falhas**: As transações garantem que, mesmo que ocorram falhas de sistema ou interrupções, o banco de dados possa ser restaurado ao estado anterior usando o rollback.

## Conclusão

As transações são a base para garantir a integridade e consistência dos dados em sistemas de banco de dados. Elas permitem que várias operações sejam executadas de forma atômica, garantindo que os dados permaneçam corretos e válidos, mesmo em situações de falha.