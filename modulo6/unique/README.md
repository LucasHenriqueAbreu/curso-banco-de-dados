# Único (Unique)

A restrição `UNIQUE` garante que todos os valores em uma coluna sejam diferentes; ou seja, cada valor na coluna deve ocorrer apenas uma vez.

Tanto as restrições `UNIQUE` quanto `PRIMARY KEY` garantem a exclusividade para uma coluna ou conjunto de colunas. No entanto, uma chave primária não pode conter `NULL`, pois identifica exclusivamente cada linha, e cada tabela pode ter apenas uma chave primária. Por outro lado, uma restrição `UNIQUE` permite um valor `NULL`, e uma tabela pode ter várias restrições `UNIQUE`.

## Sintaxe
/```sql
CREATE TABLE nome_tabela (
    coluna1 tipo_dado UNIQUE,
    coluna2 tipo_dado,
    coluna3 tipo_dado,
    ....
);
/```

Aqui, `UNIQUE` é o nome da restrição, enquanto `coluna1` e `tipo_dado` referem-se à coluna e ao tipo de dado para o qual estamos definindo a restrição, respectivamente.

## Exemplo

Suponha, por exemplo, que estamos criando uma tabela chamada "Funcionários". Queremos que a coluna "Email" contenha apenas valores únicos para evitar qualquer duplicação nos endereços de email.

Veja como podemos impor uma restrição `UNIQUE` na coluna "Email":
/```sql
CREATE TABLE Funcionários (
    ID int NOT NULL,
    Nome varchar(255) NOT NULL,
    Email varchar(255) UNIQUE
);
/```

Neste comando SQL, estamos informando ao servidor SQL que a coluna "Email" não pode ter o mesmo valor em duas ou mais linhas.

## Adicionando uma Restrição Unique a uma Tabela Existente

Para adicionar uma restrição `UNIQUE` a uma tabela existente, você usaria o comando `ALTER TABLE`. Aqui está a sintaxe:

/```sql
ALTER TABLE nome_tabela
ADD UNIQUE (coluna1, coluna2, ...);
/```

Aqui, `nome_tabela` é o nome da tabela na qual estamos definindo a restrição, e `coluna1`, `coluna2`, etc., são os nomes das colunas incluídas na restrição.

## Removendo uma Restrição Unique

O comando `ALTER TABLE` também é usado para remover uma restrição `UNIQUE`. A sintaxe para remover uma restrição `UNIQUE` é:

/```sql
ALTER TABLE nome_tabela
DROP CONSTRAINT nome_restricao;
/```

Aqui, `nome_restricao` é o nome da restrição `UNIQUE` que você deseja remover.
