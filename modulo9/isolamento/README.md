
# Isolamento (Isolation)

## O que é Isolamento?

O **Isolamento** é a terceira propriedade do conceito **ACID** em sistemas de banco de dados. Ele garante que as transações sejam executadas de forma isolada, ou seja, o trabalho de uma transação não será visível para outras transações até que a transação esteja completa. Em outras palavras, enquanto uma transação está em andamento, ela não deve interferir ou ser interferida por outras transações.

Esse isolamento entre as transações ajuda a evitar que uma transação veja dados intermediários ou incompletos de outra transação, mantendo assim a integridade e a consistência dos dados.

## Exemplo de Mundo Real

Imagine dois caixas automáticos (ATMs) acessando a mesma conta bancária simultaneamente:

1. O cliente A está sacando R$100, enquanto o cliente B está transferindo R$200 dessa mesma conta.
2. O sistema deve garantir que cada operação seja isolada. Se o cliente A saca os R$100, o saldo atualizado deve estar visível para o cliente B após o término da transação do cliente A.

O isolamento garante que uma transação seja completada sem ser influenciada por outra. Caso contrário, o sistema poderia apresentar inconsistências no saldo da conta.

### Problema que o Isolamento Resolve

Sem isolamento, se duas transações ocorressem simultaneamente, uma delas poderia "ver" o trabalho incompleto da outra e agir de acordo com esses dados parciais, causando um resultado incorreto.

Por exemplo, se a transação de um cliente estivesse visualizando o saldo de uma conta enquanto outra transação ainda estava atualizando esse saldo, o cliente poderia acabar vendo um saldo incorreto.

### Exemplo SQL de Isolamento

Aqui está um exemplo que demonstra o isolamento no banco de dados. Suponha que dois usuários tentam acessar e modificar o saldo de uma conta bancária ao mesmo tempo:

```sql
START TRANSACTION;

-- Verificar saldo atual
SELECT saldo FROM contas WHERE conta_id = 123 FOR UPDATE;

-- Subtrair um valor do saldo
UPDATE contas
SET saldo = saldo - 100
WHERE conta_id = 123;

-- Finalizar a transação
COMMIT;

-- Se algo der errado
ROLLBACK;
```

A cláusula `FOR UPDATE` bloqueia a linha até que a transação seja concluída, garantindo que nenhuma outra transação possa modificar o saldo da conta até que a primeira transação termine. Assim, as transações são executadas de forma isolada.

## Níveis de Isolamento

Em sistemas de banco de dados, há diferentes níveis de isolamento que determinam o grau de visibilidade entre transações:

1. **Read Uncommitted**: Permite que uma transação veja dados não confirmados de outra transação (não garante isolamento completo).
2. **Read Committed**: Garante que uma transação só veja dados confirmados de outras transações.
3. **Repeatable Read**: Garante que se uma linha de dados for lida várias vezes, o mesmo resultado será retornado, independentemente de outras transações.
4. **Serializable**: O nível mais alto de isolamento, garantindo que as transações sejam completamente isoladas umas das outras.

## Benefícios do Isolamento

- **Evita leituras sujas**: Impede que uma transação veja dados não confirmados de outra transação.
- **Garante consistência dos dados**: Cada transação age de forma isolada, garantindo que os dados vistos sejam consistentes.
- **Previne interferência entre transações**: O isolamento evita que transações influenciem negativamente umas às outras.

## Conclusão

O isolamento é essencial para garantir que as transações sejam executadas de forma independente, sem interferências. Ele protege o banco de dados contra problemas como leituras sujas, garantindo que cada transação veja um estado consistente e completo dos dados.
