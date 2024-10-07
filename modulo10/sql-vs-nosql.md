# SQL vs NoSQL

Ao discutir bancos de dados, é essencial entender a diferença entre bancos de dados SQL e NoSQL, pois cada um tem seu próprio conjunto de vantagens e limitações. Nesta seção, vamos comparar brevemente os dois, para que você possa determinar qual deles atende melhor às suas necessidades.

## Bancos de Dados SQL

Bancos de dados SQL (Structured Query Language) também são conhecidos como bancos de dados relacionais. Eles têm um esquema predefinido, e os dados são armazenados em tabelas compostas por linhas e colunas. Os bancos de dados SQL seguem as propriedades ACID (Atomicidade, Consistência, Isolamento, Durabilidade) para garantir transações confiáveis. Alguns bancos de dados SQL populares incluem MySQL, PostgreSQL e Microsoft SQL Server.

**Vantagens dos bancos de dados SQL:**

- **Esquema predefinido**: Ideal para aplicações com uma estrutura fixa.
- **Transações ACID**: Garantem consistência e confiabilidade dos dados.
- **Suporte para consultas complexas**: Consultas SQL robustas podem lidar com relacionamentos complexos de dados e operações de agregação.
- **Escalabilidade**: Escalabilidade vertical ao adicionar mais recursos ao servidor (por exemplo, RAM, CPU).

**Limitações dos bancos de dados SQL:**

- **Esquema rígido**: Atualizações na estrutura de dados são demoradas e podem causar tempo de inatividade.
- **Escalabilidade**: Dificuldades em escalar horizontalmente e fazer sharding de dados em vários servidores.
- **Pouco adequado para dados hierárquicos**: Requer várias tabelas e JOINs para modelar estruturas em árvore.

## Bancos de Dados NoSQL

Bancos de dados NoSQL (Not only SQL) referem-se a bancos de dados não relacionais, que não seguem um esquema fixo para o armazenamento de dados. Em vez disso, eles usam um formato flexível e semi-estruturado, como documentos JSON, pares chave-valor ou grafos. MongoDB, Cassandra, Redis e Couchbase são alguns bancos de dados NoSQL populares.

**Vantagens dos bancos de dados NoSQL:**

- **Esquema flexível**: Adapta-se facilmente a mudanças sem interromper a aplicação.
- **Escalabilidade**: Escalabilidade horizontal ao particionar dados em vários servidores (sharding).
- **Rápido**: Projetado para leituras e gravações mais rápidas, muitas vezes com uma linguagem de consulta mais simples.
- **Manipulação de grandes volumes de dados**: Melhor adequado para gerenciar big data e aplicações em tempo real.
- **Suporte para várias estruturas de dados**: Diferentes bancos de dados NoSQL atendem a várias necessidades, como documentos, grafos ou armazenamento de pares chave-valor.

**Limitações dos bancos de dados NoSQL:**

- **Capacidades limitadas de consulta**: Alguns bancos de dados NoSQL carecem de suporte para consultas e agregações complexas ou usam linguagens de consulta específicas.
- **Consistência mais fraca**: Muitos bancos de dados NoSQL seguem as propriedades BASE (Basicamente Disponível, Estado Suave, Consistência Eventual), que oferecem garantias de consistência mais fracas do que os bancos de dados compatíveis com ACID.

## MongoDB: Um Banco de Dados NoSQL

Este guia se concentra no MongoDB, um popular banco de dados NoSQL que utiliza um modelo de dados baseado em documentos. O MongoDB foi projetado com flexibilidade, desempenho e escalabilidade em mente. Com seu formato de dados semelhante ao JSON (BSON) e capacidades de consulta poderosas, o MongoDB é uma excelente escolha para aplicações modernas que lidam com dados diversos e em grande escala.

- [@official@NoSQL vs. SQL Databases](https://www.mongodb.com/nosql-explained/nosql-vs-sql)
- [@feed@Explore top posts about NoSQL](https://app.daily.dev/tags/nosql?ref=roadmapsh)