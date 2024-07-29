# DELETE

A instrução `DELETE` em SQL é usada para remover registros existentes de um banco de dados. No entanto, tenha em mente que é uma operação destrutiva e pode apagar permanentemente dados do seu banco de dados.

Com a instrução `DELETE`, você pode realizar as seguintes ações:

1. **Excluir Todas as Linhas:**

    A instrução `DELETE` sem uma cláusula `WHERE` exclui todas as linhas em uma tabela. Esta operação é irreversível.

    Exemplo:
    ```sql
    DELETE FROM nome_da_tabela;
    ```
    Esta instrução SQL exclui todos os registros da `nome_da_tabela`.

2. **Excluir Linhas Específicas:**

    Quando combinada com a cláusula `WHERE`, a instrução SQL `DELETE` apaga linhas específicas que atendem à condição.

    Exemplo:
    ```sql
    DELETE FROM nome_da_tabela WHERE condição;
    ```
    Este exemplo da instrução `DELETE` exclui registros da `nome_da_tabela` onde a `condição` fornecida é atendida.

É crucial usar `DELETE` com cautela, pois pode apagar linhas importantes ou até mesmo esvaziar completamente a tabela.

*Nota: A exclusão realizada pela instrução "DELETE" é permanente e não pode ser desfeita. Sempre assegure-se de ter um backup antes de executar uma consulta DELETE, especialmente quando for em um banco de dados de produção.*
