# Data Definition Language (DDL)

A Linguagem de Definição de Dados (DDL) é um subconjunto do SQL. Sua principal função é criar, modificar e excluir estruturas de banco de dados, mas não dados. Os comandos em DDL são:

1. `CREATE`: Este comando é usado para criar o banco de dados ou seus objetos (como tabelas, índices, funções, visões, procedimentos armazenados e gatilhos).

    ```sql
    CREATE TABLE nome_da_tabela (
        coluna1 tipo_de_dado(tamanho),
        coluna2 tipo_de_dado(tamanho),
        ...
    );
    ```

2. `DROP`: Este comando é usado para excluir um banco de dados ou tabela existente.

    ```sql
    DROP TABLE nome_da_tabela;
    ```

3. `ALTER`: Este comando é usado para alterar a estrutura do banco de dados. Ele é utilizado para adicionar, excluir ou modificar colunas em uma tabela existente.

    ```sql
    ALTER TABLE nome_da_tabela ADD nome_da_coluna tipo_de_dado;
    ALTER TABLE nome_da_tabela DROP COLUMN nome_da_coluna;
    ALTER TABLE nome_da_tabela MODIFY COLUMN nome_da_coluna tipo_de_dado(tamanho);
    ```

4. `TRUNCATE`: Este comando é usado para remover todos os registros de uma tabela, incluindo todos os espaços alocados para os registros que são removidos.

    ```sql
    TRUNCATE TABLE nome_da_tabela;
    ```

5. `RENAME`: Este comando é usado para renomear um objeto no banco de dados.

    ```sql
    -- Para renomear uma tabela
    ALTER TABLE nome_da_tabela
    RENAME TO novo_nome_da_tabela;
    
    -- Para renomear uma coluna
    ALTER TABLE nome_da_tabela
    RENAME COLUMN nome_da_coluna_antigo TO nome_da_coluna_novo;
    ```

Lembre-se: Em operações DDL, os comandos `COMMIT` e `ROLLBACK` não podem ser realizados porque o mecanismo MySQL automaticamente confirma as alterações.

Lembre-se de substituir `nome_da_tabela`, `nome_da_coluna`, `tipo_de_dado(tamanho)`, `nome_da_tabela_antigo` e `novo_nome_da_tabela` nos exemplos acima pelos nomes reais das tabelas, nomes das colunas, tipos de dados e tamanhos, e os nomes antigos ou novos das tabelas que você deseja especificar.


# Sumário
- [Create Table](./create-table/README.md)
- [Truncate Table](./truncate-table/README.md)
- [Alter Table](./alter-table/README.md)
- [Drop Table](./drop-table/README.md)

# Recursos da aula:
- [Aula](./aula/README.md)
- [Exercícios](./exercicios/README.md)
