
# Exercícios de Banco de Dados – ACID

## Questões Teóricas

**1.** Defina o que é o conceito ACID em banco de dados e explique brevemente o significado de cada uma das propriedades.

**2.** Explique com suas palavras o que é uma transação em banco de dados e qual a importância de garantir que uma transação siga as propriedades ACID.

**3.** A atomicidade garante que uma transação seja completada inteiramente ou não aconteça. Dê um exemplo de uma situação no mundo real onde a atomicidade evita problemas no banco de dados.

**4.** Qual a diferença entre **isolamento** e **atomicidade** em uma transação de banco de dados? Dê exemplos que mostrem a importância de ambas as propriedades.

**5.** Em termos de **consistência**, quais restrições podem ser aplicadas a uma tabela para garantir a integridade dos dados? Cite e explique pelo menos três restrições diferentes.

---

## Questões Práticas

**1.** Considere que uma loja online precise registrar uma compra que envolve inserir um novo cliente e os produtos comprados por ele. Implemente uma transação SQL que insira um cliente e um pedido, garantindo que, se uma das inserções falhar, ambas sejam revertidas.

**2.** Crie uma tabela `produtos` com as seguintes colunas: `id` (chave primária), `nome` (VARCHAR), e `preco` (DECIMAL). Utilize uma restrição `CHECK` para garantir que o valor do preço seja maior que zero.

**3.** Insira 5 produtos fictícios na tabela `produtos` criada no exercício anterior. Certifique-se de que um dos produtos tenha um preço inválido para testar a consistência da transação.

**4.** Crie uma transação SQL que atualize o estoque de um produto em uma tabela `estoque` e diminua a quantidade de produtos após uma venda. Caso a quantidade em estoque não seja suficiente, a transação deve ser cancelada manualmente (não use IF).

**5.** Escreva uma consulta SQL que insira uma nova linha em uma tabela `pedidos` e, logo em seguida, consulte a tabela para garantir que a linha foi inserida corretamente, utilizando o conceito de durabilidade.
