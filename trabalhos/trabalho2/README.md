# Atividade em Sala de Aula: Modelagem e Criação de Banco de Dados para um Sistema de Gestão de Torneios de E-Sports

## Introdução

Nesta atividade, você será responsável por modelar, criar e popular um banco de dados para um sistema de gestão de torneios de e-sports. Este sistema será capaz de gerenciar informações sobre jogadores, times, partidas, resultados e campeonatos. Além disso, o sistema deve ser capaz de gerar relatórios que ajudem a organização a entender o desempenho dos jogadores e dos times ao longo dos torneios.

## Objetivo

- Modelar um banco de dados relacional para um sistema de gestão de torneios de e-sports.
- Criar as tabelas necessárias usando SQL.
- Implementar as chaves primárias, chaves estrangeiras, e outras restrições.
- Realizar alterações nas tabelas conforme necessário.
- Gerar relatórios que analisem o desempenho de jogadores e times.

---

## Etapa 1: Modelagem do Banco de Dados

### 1.1. Identificação das Entidades
- **Instrução**: Identifique as principais entidades que devem ser representadas no banco de dados. Pelo menos, as seguintes entidades devem ser consideradas:
  - **Jogador**: Representa cada jogador inscrito no sistema.
  - **Time**: Representa um time composto por jogadores.
  - **Partida**: Representa uma partida específica em um torneio.
  - **Torneio**: Representa o torneio em que as partidas são realizadas.
  - **Resultado**: Armazena o resultado de cada partida, associando os times/jogadores.

### 1.2. Definição dos Atributos
- **Instrução**: Defina os atributos principais para cada uma das entidades. Inclua os seguintes atributos:
  - **Jogador**: ID do Jogador, Nome, Nickname, Nacionalidade, Data de Nascimento
  - **Time**: ID do Time, Nome do Time, Data de Criação
  - **Torneio**: ID do Torneio, Nome do Torneio, Data de Início, Data de Término
  - **Partida**: ID da Partida, Data e Hora, ID do Torneio, ID do Time 1, ID do Time 2
  - **Resultado**: ID da Partida, ID do Time Vencedor, Pontuação do Time 1, Pontuação do Time 2

### 1.3. Relacionamentos
- **Instrução**: Defina os relacionamentos entre as entidades. Por exemplo:
  - Um **Time** pode ter vários **Jogadores**.
  - Um **Torneio** pode ter várias **Partidas**.
  - Cada **Partida** envolve dois **Times**.
  - Cada **Resultado** está relacionado a uma **Partida**.

---

## Etapa 2: Criação do Banco de Dados

### 2.1. Criar a Tabela `Jogador`
- **Instrução**: Crie a tabela `Jogador` com os campos necessários, incluindo uma chave primária.

### 2.2. Criar a Tabela `Time`
- **Instrução**: Crie a tabela `Time` com os campos necessários, incluindo uma chave primária.

### 2.3. Criar a Tabela `Torneio`
- **Instrução**: Crie a tabela `Torneio` com os campos necessários, incluindo uma chave primária.

### 2.4. Criar a Tabela `Partida`
- **Instrução**: Crie a tabela `Partida` com os campos necessários, incluindo chaves estrangeiras para os times participantes e o torneio.

### 2.5. Criar a Tabela `Resultado`
- **Instrução**: Crie a tabela `Resultado` para armazenar os resultados das partidas, incluindo a pontuação e o time vencedor.

---

## Etapa 3: Inserção de Dados

### 3.1. Inserir Jogadores e Times
- **Instrução**: Insira registros nas tabelas `Jogador` e `Time`.

### 3.2. Inserir Torneios e Partidas
- **Instrução**: Insira registros nas tabelas `Torneio` e `Partida`.

### 3.3. Inserir Resultados
- **Instrução**: Insira registros na tabela `Resultado`, registrando o vencedor de cada partida.

---

## Etapa 4: Geração de Relatórios

### 4.1. Relatório de Desempenho de Times
- **Instrução**: Crie um relatório que mostre o desempenho de cada time em um torneio específico. O relatório deve incluir o número de partidas vencidas e a pontuação total acumulada.

### 4.2. Relatório de Desempenho de Jogadores
- **Instrução**: Crie um relatório que mostre o desempenho dos jogadores em termos de participação e resultados nas partidas.

### 4.3. Relatório de Análise do Torneio
- **Instrução**: Crie um relatório final que resuma o torneio, indicando o time campeão, o número total de partidas jogadas, e outras estatísticas relevantes.

---

## Etapa 5: Alterações no Banco de Dados

### 5.1. Adicionar um Campo `Desconto` na Tabela `ItemNota`
- **Instrução**: Adicione uma coluna `Desconto` (DECIMAL) à tabela `ItemNota` para permitir descontos em itens.

### 5.2. Atualizar Dados na Tabela `Produto`
- **Instrução**: Atualize o preço unitário de todos os produtos, aplicando um aumento de 10%.

---

## Entregáveis

Os seguintes itens deverão ser entregues ao final da atividade:

- **Modelo de Entidade e Relacionamento**: Um arquivo PNG com o modelo de entidade e relacionamento (ER) do banco de dados.
- **Criação do Banco de Dados**: Um arquivo SQL contendo os comandos para a criação do banco de dados e suas tabelas.
- **Consultas de Relatórios**: Um arquivo SQL contendo as consultas SQL utilizadas para gerar os relatórios solicitados.

---

## Conclusão

Esta atividade foi projetada para ajudar você a entender o processo completo de modelagem, criação, inserção de dados e manipulação de um banco de dados para um sistema de gestão de torneios de e-sports. Aplique as melhores práticas aprendidas em sala de aula e esteja preparado para discutir suas soluções com os colegas e o professor.

---
