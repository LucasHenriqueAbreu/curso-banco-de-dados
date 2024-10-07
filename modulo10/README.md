# Noções Básicas do MongoDB

O MongoDB é um sistema de banco de dados NoSQL popular que armazena dados em documentos flexíveis semelhantes a JSON, o que o torna adequado para trabalhar com dados em grande escala e não estruturados.

- **Database (Banco de Dados)**: Armazena todas as suas coleções dentro de uma instância do MongoDB.
- **Collection (Coleção)**: Um grupo de documentos relacionados, semelhante a uma tabela em um banco de dados relacional.
- **Document (Documento)**: Um único registro dentro de uma coleção, armazenado no formato BSON (JSON Binário).
- **Field (Campo)**: Um par chave-valor dentro de um documento.
- **\_id**: Um identificador exclusivo gerado automaticamente para cada documento dentro de uma coleção.

## Operações Básicas

- **Insert (Inserir)**: Para inserir um único documento, use `db.collection.insertOne()`. Para inserir vários documentos, use `db.collection.insertMany()`.
- **Find (Buscar)**: Busque documentos de uma coleção usando `db.collection.find()` e filtre os resultados com critérios de consulta como `{campo: valor}`. Para buscar apenas um documento, use `db.collection.findOne()`.
- **Update (Atualizar)**: Atualize campos ou documentos inteiros usando operadores de atualização como `$set` e `$unset` com `db.collection.updateOne()` ou `db.collection.updateMany()`.
- **Delete (Excluir)**: Remova documentos de uma coleção usando `db.collection.deleteOne()` ou `db.collection.deleteMany()` com critérios de consulta.
- **Drop (Excluir Permanentemente)**: Exclua permanentemente uma coleção ou um banco de dados usando `db.collection.drop()` e `db.dropDatabase()`.

## Índices e Agregações

- **Indexes (Índices)**: Melhore o desempenho das buscas criando índices em campos dentro de uma coleção usando `db.collection.createIndex()` ou crie índices compostos para consultar vários campos.
- **Aggregations (Agregações)**: Realize tarefas complexas de processamento de dados, como filtrar, agrupar, transformar e ordenar, usando operações de agregação como `$match`, `$group`, `$project` e `$sort`.

## Modelagem de Dados

O esquema flexível do MongoDB permite várias técnicas de modelagem de dados, incluindo:

- **Embedded Documents (Documentos Incorporados)**: Armazene dados relacionados juntos em um único documento, o que é adequado para relacionamentos de um-para-um ou um-para-poucos.
- **Normalization (Normalização)**: Armazene dados relacionados em documentos separados com referências entre eles, adequado para relacionamentos de um-para-muitos ou muitos-para-muitos.
- **Hybrid Approach (Abordagem Híbrida)**: Combine documentos incorporados e normalização para equilibrar as necessidades de desempenho e armazenamento.

Em conclusão, o design flexível e rico em recursos do MongoDB o torna uma escolha poderosa para aplicativos modernos que lidam com dados em grande escala e não estruturados. Entender os princípios básicos do MongoDB pode ajudá-lo a usá-lo de forma eficaz como sua solução de armazenamento de dados.

## Sumário
- [Sql vs Nosql](./sql-vs-nosql.md)
- [O que é o Mongo](./what-is-mongodb.md)
- [Quando usar MongoDB](./when-to-use-mongodb.md)
- [O que é o Mongodb Atlas](./what-is-mongodb-atlas.md)
- [Terminologia do Mongodb](./mongodb-terminology.md)