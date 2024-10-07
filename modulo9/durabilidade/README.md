
# Durabilidade (Durability)

## O que é Durabilidade?

A **Durabilidade** é a quarta e última propriedade do conceito **ACID** em sistemas de banco de dados. Ela garante que, após uma transação ser confirmada (committed), seus efeitos persistam no banco de dados, mesmo em casos de falha no sistema, como quedas de energia, travamentos ou falhas de hardware. Ou seja, uma vez que uma transação é concluída com sucesso, os dados modificados são salvos permanentemente.

## Exemplo de Mundo Real

Imagine que você faz uma transferência bancária utilizando um aplicativo de banco. Assim que a transação é confirmada, a transferência deve ser efetivada e persistir, mesmo que o sistema do banco passe por algum tipo de falha logo após a conclusão da transação. A **durabilidade** garante que as mudanças efetuadas pela transação permaneçam no sistema, independentemente do que aconteça com o banco de dados logo em seguida.

### Problema que a Durabilidade Resolve

Sem a durabilidade, dados de transações confirmadas poderiam ser perdidos em caso de falhas do sistema, levando a inconsistências e possíveis problemas operacionais. Por exemplo, se um banco de dados não garantir a durabilidade, uma transferência confirmada poderia "desaparecer" do sistema após uma queda de energia, o que seria inaceitável em operações críticas.

## Exemplo de Durabilidade

No contexto de um banco de dados, uma transação só é considerada durável quando suas alterações são gravadas em disco de forma permanente. Um exemplo de SQL que reflete essa garantia:

```sql
START TRANSACTION;

-- Atualizar o saldo da conta
UPDATE contas
SET saldo = saldo - 100
WHERE conta_id = 123;

-- Confirmar a transação para garantir que a alteração seja permanente
COMMIT;
```

Neste exemplo, após o comando `COMMIT`, o sistema de banco de dados garante que a transação foi gravada de maneira durável. Mesmo que ocorra uma falha no sistema após o `COMMIT`, a modificação no saldo da conta persistirá.

## Mecanismos para Garantir Durabilidade

Os bancos de dados utilizam várias técnicas para garantir a durabilidade das transações, incluindo:

1. **Gravação em Disco**: As modificações feitas por uma transação são armazenadas permanentemente em disco (ou em outros dispositivos de armazenamento não voláteis) assim que a transação é confirmada.
2. **Journaling (Registro de Logs)**: Muitas bases de dados escrevem logs (registros de transações) antes de aplicar as mudanças nos dados, para que, em caso de falha, os logs possam ser usados para restaurar o estado do banco de dados.
3. **Sistemas de Backup**: Backups regulares garantem que as informações sejam preservadas em situações de falhas catastróficas.

## Benefícios da Durabilidade

- **Proteção contra falhas**: Garante que, mesmo em caso de falhas de hardware ou software, os dados confirmados sejam mantidos de maneira segura.
- **Confiança em transações**: Os usuários podem confiar que as transações serão aplicadas de maneira permanente.
- **Integridade de dados**: A durabilidade preserva a integridade dos dados após a conclusão das transações.

## Conclusão

A durabilidade é uma propriedade essencial que assegura que os dados não sejam perdidos após a confirmação de uma transação. Com isso, os bancos de dados podem fornecer garantias de que as transações concluídas permanecerão persistentes, independentemente de falhas subsequentes no sistema.
