---
marp: true
title: SQL vs NoSQL
paginate: true
theme: default
---

# SQL vs NoSQL

Ao discutir bancos de dados, é essencial entender a diferença entre bancos de dados SQL e NoSQL, pois cada um tem seu próprio conjunto de vantagens e limitações. Nesta seção, faremos uma breve comparação entre os dois, para que você possa determinar qual atende melhor às suas necessidades.

---

## Bancos de Dados SQL

Bancos de dados SQL (Structured Query Language) também são conhecidos como bancos de dados relacionais. Eles têm um esquema predefinido, e os dados são armazenados em tabelas compostas por linhas e colunas. Bancos de dados SQL seguem as propriedades ACID (Atomicidade, Consistência, Isolamento e Durabilidade) para garantir transações confiáveis. Alguns bancos de dados SQL populares incluem MySQL, PostgreSQL e Microsoft SQL Server.

--- 

**Vantagens dos bancos de dados SQL:**

- **Esquema predefinido:** Ideal para aplicações com uma estrutura fixa.
- **Transações ACID:** Garante a consistência e a confiabilidade dos dados.
- **Suporte a consultas complexas:** Consultas SQL ricas podem lidar com relacionamentos de dados complexos e operações de agregação.
- **Escalabilidade:** Escalabilidade vertical ao adicionar mais recursos ao servidor (por exemplo, RAM, CPU).

---

**Limitações dos bancos de dados SQL:**

- **Esquema rígido:** Atualizações na estrutura de dados são demoradas e podem levar a períodos de inatividade.
- **Escalabilidade:** Dificuldades em escalar horizontalmente e particionar dados entre vários servidores.
- **Não adequado para dados hierárquicos:** Requer várias tabelas e JOINs para modelar estruturas em árvore.

---

## Bancos de Dados NoSQL

Bancos de dados NoSQL (Not only SQL) referem-se a bancos de dados não relacionais, que não seguem um esquema fixo para armazenamento de dados. Em vez disso, eles usam um formato flexível e semi-estruturado, como documentos JSON, pares chave-valor ou gráficos. MongoDB, Cassandra, Redis e Couchbase são alguns bancos de dados NoSQL populares.

---

**Vantagens dos bancos de dados NoSQL:**

- **Esquema flexível:** Adapta-se facilmente às mudanças sem interromper a aplicação.
- **Escalabilidade:** Escalabilidade horizontal por meio da partição de dados entre vários servidores (sharding).
- **Rápido:** Projetado para leituras e gravações mais rápidas, frequentemente com uma linguagem de consulta mais simples.
- **Gerenciamento de grandes volumes de dados:** Melhor adequado para gerenciar big data e aplicações em tempo real.
- **Suporte a várias estruturas de dados:** Diferentes bancos de dados NoSQL atendem a várias necessidades, como armazenamento de documentos, gráficos ou pares chave-valor.

---

**Limitações dos bancos de dados NoSQL:**

- **Capacidades de consulta limitadas:** Alguns bancos de dados NoSQL carecem de suporte a consultas e agregações complexas ou utilizam linguagens de consulta específicas.
- **Consistência mais fraca:** Muitos bancos de dados NoSQL seguem as propriedades BASE (Basicamente Disponível, Estado Suave, Consistência Eventual) que fornecem garantias de consistência mais fracas do que bancos de dados compatíveis com ACID.

---

## MongoDB: Um Banco de Dados NoSQL

Este guia foca no MongoDB, um popular banco de dados NoSQL que usa um modelo de dados baseado em documentos. O MongoDB foi projetado com flexibilidade, desempenho e escalabilidade em mente. Com seu formato de dados semelhante ao JSON (BSON) e poderosas capacidades de consulta, o MongoDB é uma excelente escolha para aplicações modernas que lidam com dados diversos e em larga escala.

---

### Recursos Recomendados

- [SQL vs NoSQL: The Differences](https://www.sitepoint.com/sql-vs-nosql-differences/)
- [SQL vs. NoSQL Databases: What’s the Difference?](https://www.ibm.com/blog/sql-vs-nosql/)
- [NoSQL vs. SQL Databases](https://www.mongodb.com/nosql-explained/nosql-vs-sql)
- [Explore top posts about NoSQL](https://app.daily.dev/tags/nosql?ref=roadmapsh)
