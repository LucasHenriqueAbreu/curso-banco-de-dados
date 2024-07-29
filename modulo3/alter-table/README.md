# Alter Table

O comando `ALTER TABLE` no SQL é usado para adicionar, excluir/remover ou modificar colunas em uma tabela existente. Também é útil para adicionar e remover restrições, como chave primária, chave estrangeira, etc.

## Adicionar Coluna

Para adicionar uma única coluna, use a seguinte sintaxe:

```sql
ALTER TABLE nome_da_tabela
ADD nome_da_coluna tipo_de_dado;
```

Para adicionar mais de uma coluna:

```sql
ALTER TABLE nome_da_tabela
ADD (nome_da_coluna1 tipo_de_dado,
     nome_da_coluna2 tipo_de_dado,
     ...
     );
```

## Remover Coluna

Para remover uma única coluna:

```sql
ALTER TABLE nome_da_tabela
DROP COLUMN nome_da_coluna;
```

Para remover múltiplas colunas:

```sql
ALTER TABLE nome_da_tabela
DROP (nome_da_coluna1,
       nome_da_coluna2,
       ...
      );
```

## Modificar Coluna

Para modificar o tipo de dado de uma coluna:

```sql
ALTER TABLE nome_da_tabela
MODIFY COLUMN nome_da_coluna novo_tipo_de_dado;
```

## Adicionar/Remover Restrições

Para adicionar restrições:

```sql
ALTER TABLE nome_da_tabela
ADD CONSTRAINT nome_da_restricao
PRIMARY KEY (coluna1, coluna2, ... coluna_n);
```

Para remover restrições:

```sql
ALTER TABLE nome_da_tabela
DROP CONSTRAINT nome_da_restricao;
```

Para remover a CHAVE PRIMÁRIA:

```sql
ALTER TABLE nome_da_tabela
DROP PRIMARY KEY;
```

Em conclusão, o `ALTER TABLE` no SQL permite alterar a estrutura de uma tabela existente. Este é um comando poderoso que permite adicionar, modificar e excluir colunas, bem como as restrições aplicadas a elas. Ele garante que você tenha mais flexibilidade ao lidar com requisitos de armazenamento de dados em mudança.
