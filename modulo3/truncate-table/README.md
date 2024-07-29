# Truncate Table

A declaração `TRUNCATE TABLE` é uma operação da Linguagem de Definição de Dados (DDL) usada para marcar os extensores de uma tabela para desalocação (vazia para reutilização). O resultado dessa operação remove rapidamente todos os dados de uma tabela, geralmente ignorando vários mecanismos de integridade destinados a proteger os dados (como gatilhos).

Ela elimina efetivamente todos os registros em uma tabela, mas não a tabela em si. Diferente da declaração `DELETE`, `TRUNCATE TABLE` não gera declarações de exclusão de linha individuais, então o sobrecarga usual para log ou bloqueio não se aplica.

## Sintaxe

No SQL, a declaração `TRUNCATE TABLE` é bastante simples:

```sql
TRUNCATE TABLE nome_da_tabela;
```

Neste comando, "nome_da_tabela" refere-se ao nome da tabela que você deseja limpar.

## Exemplo

Se você tem uma tabela chamada `Orders` e deseja excluir todos os seus registros, você usaria:

```sql
TRUNCATE TABLE Orders;
```

Após executar esta declaração, a tabela `Orders` ainda existiria, mas estaria vazia.

Lembre-se de que, embora `TRUNCATE TABLE` seja mais rápido e use menos recursos de sistema e log de transações do que `DELETE`, ele não invoca gatilhos e não pode ser revertido, então use com cautela.

## Limitações

`TRUNCATE TABLE` preserva a estrutura da tabela para uso futuro. Mas você não pode truncar uma tabela que:

- É referenciada por uma restrição de CHAVE ESTRANGEIRA. (Você pode truncar uma tabela que tem uma chave estrangeira que referencia a si mesma.)
- Participa de uma visão indexada.
- É publicada usando replicação transacional ou replicação de mesclagem.

Se você tentar truncar uma tabela com uma restrição de chave estrangeira, o SQL Server impedirá você de fazê-lo e você terá que usar a declaração `DELETE` em vez disso.

Para tabelas particionadas, `TRUNCATE TABLE` remove todas as linhas de todas as partições. A operação não é permitida se a tabela contiver colunas LOB - `varchar(max), nvarchar(max), varbinary(max), text, ntext, image, xml`, ou se a tabela contiver colunas filestream ou tipos de dados espaciais geo, geography, geometry, e hierarchyid, ou quaisquer colunas de tipos de dados definidos pelo usuário CLR.
