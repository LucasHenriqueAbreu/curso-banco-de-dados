# Operadores

Os operadores SQL são usados para realizar operações como comparações e cálculos aritméticos. Eles são fundamentais na formação de consultas. Os operadores SQL são divididos nos seguintes tipos:

1. **Operadores Aritméticos**: Estes são usados para realizar operações matemáticas. Aqui está uma lista desses operadores:

    - `+` : Adição
    - `-` : Subtração
    - `*` : Multiplicação
    - `/` : Divisão
    - `%` : Módulo

   Exemplo:

    \```sql
    SELECT product, price, (price * 0.18) as tax
    FROM products;
    \```

2. **Operadores de Comparação**: Estes são usados na cláusula WHERE para comparar uma expressão com outra. Alguns desses operadores são:

    - `=` : Igual
    - `!=` ou `<>` : Diferente
    - `>` : Maior que
    - `<` : Menor que
    - `>=`: Maior ou igual a
    - `<=`: Menor ou igual a

   Exemplo:

    \```sql
    SELECT name, age
    FROM students
    WHERE age > 18;
    \```

3. **Operadores Lógicos**: Eles são usados para combinar o conjunto de resultados de duas condições diferentes. Estes incluem:

    - `AND`: Retorna verdadeiro se ambas as condições forem verdadeiras.
    - `OR` : Retorna verdadeiro se pelo menos uma das condições for verdadeira.
    - `NOT`: Retorna o valor booleano oposto da condição.

   Exemplo:

    \```sql
    SELECT * 
    FROM employees
    WHERE salary > 50000 AND age < 30;
    \```

4. **Operadores Bitwise**: Estes realizam operações a nível de bits sobre os operandos. Aqui está uma lista desses operadores:

    - `&` : E bitwise
    - `|` : OU bitwise
    - `^` : OU exclusivo bitwise

   Operadores bitwise são muito menos usados em SQL do que os outros tipos de operadores.

Lembre-se, o tipo de dado do resultado depende dos tipos dos operandos.


# Sumário
- [SELECT](./select/README.md)
- [INSERT](./insert/README.md)
- [UPDATE](./update/README.md)
- [DELETE](./delete/README.md)

[Página Anterior](../data-types/README.md) - [Próxima Página](../operators/select/README.md)