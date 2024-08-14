
# Trabalho: Análise de Indicadores de Saúde

## Introdução
Neste trabalho, você será responsável por analisar dados de saúde dos cidadãos de uma cidade. Através de uma série de tarefas, você criará e interpretará indicadores de saúde que ajudarão a entender melhor o perfil de saúde da população.

## Tabela: cidadaos
A tabela `cidadaos` contém os dados fictícios de saúde dos cidadãos, incluindo nome, idade, sexo, bairro e doença. Abaixo está o script SQL para criação da tabela e inserção dos dados:

```sql
CREATE TABLE cidadaos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    sexo CHAR(1),
    bairro VARCHAR(100),
    doenca VARCHAR(100)
);

INSERT INTO cidadaos (id, nome, idade, sexo, bairro, doenca) VALUES
(1, 'Ana Silva', 34, 'F', 'Centro', 'Diabetes'),
(2, 'Bruno Costa', 45, 'M', 'Centro', 'Hipertensão'),
(3, 'Carlos Oliveira', 29, 'M', 'Centro', 'Asma'),
(4, 'Diana Souza', 50, 'F', 'Centro', 'Hipertensão'),
(5, 'Eduardo Lima', 22, 'M', 'Centro', 'Diabetes'),
(6, 'Fernanda Rocha', 31, 'F', 'Centro', 'Asma'),
(7, 'Gabriel Martins', 38, 'M', 'Zona Norte', 'Diabetes'),
(8, 'Helena Cardoso', 60, 'F', 'Zona Norte', 'Hipertensão'),
(9, 'Igor Santos', 40, 'M', 'Zona Norte', 'Diabetes'),
(10, 'Juliana Almeida', 27, 'F', 'Zona Norte', 'Asma'),
(11, 'Kleber Ramos', 35, 'M', 'Zona Norte', 'Hipertensão'),
(12, 'Larissa Mendes', 49, 'F', 'Zona Norte', 'Asma'),
(13, 'Marcelo Ferreira', 33, 'M', 'Zona Sul', 'Diabetes'),
(14, 'Nathalia Moreira', 41, 'F', 'Zona Sul', 'Hipertensão'),
(15, 'Otávio Barbosa', 55, 'M', 'Zona Sul', 'Diabetes'),
(16, 'Patrícia Oliveira', 30, 'F', 'Zona Sul', 'Asma'),
(17, 'Quirino Andrade', 62, 'M', 'Zona Sul', 'Hipertensão'),
(18, 'Renata Farias', 44, 'F', 'Zona Sul', 'Diabetes'),
(19, 'Sérgio Cunha', 28, 'M', 'Centro', 'Asma'),
(20, 'Tânia Lima', 47, 'F', 'Centro', 'Diabetes'),
(21, 'Ulisses Campos', 37, 'M', 'Zona Oeste', 'Hipertensão'),
(22, 'Valéria Duarte', 53, 'F', 'Zona Oeste', 'Diabetes'),
(23, 'Wagner Carvalho', 42, 'M', 'Zona Oeste', 'Asma'),
(24, 'Xavier Borges', 50, 'M', 'Zona Oeste', 'Hipertensão'),
(25, 'Yara Teixeira', 34, 'F', 'Zona Oeste', 'Asma'),
(26, 'Zenaide Pereira', 61, 'F', 'Zona Oeste', 'Diabetes'),
(27, 'Arthur Souza', 46, 'M', 'Centro', 'Hipertensão'),
(28, 'Bia Silva', 39, 'F', 'Centro', 'Asma'),
(29, 'Cássio Ribeiro', 31, 'M', 'Zona Norte', 'Diabetes'),
(30, 'Daniela Franco', 24, 'F', 'Zona Sul', 'Asma'),
(31, 'Elias Melo', 52, 'M', 'Centro', 'Hipertensão'),
(32, 'Flávia Gomes', 36, 'F', 'Zona Oeste', 'Diabetes'),
(33, 'Gustavo Araújo', 29, 'M', 'Zona Sul', 'Asma'),
(34, 'Heloisa Barbosa', 57, 'F', 'Centro', 'Diabetes'),
(35, 'Ícaro Nogueira', 48, 'M', 'Zona Norte', 'Hipertensão'),
(36, 'Júlio Vieira', 40, 'M', 'Zona Oeste', 'Diabetes'),
(37, 'Lívia Castro', 33, 'F', 'Zona Sul', 'Asma'),
(38, 'Mário Braga', 56, 'M', 'Zona Norte', 'Diabetes'),
(39, 'Nina Duarte', 45, 'F', 'Centro', 'Hipertensão'),
(40, 'Otávio Silva', 25, 'M', 'Zona Norte', 'Asma');
```

## Tarefas

### Tarefa 1: Distribuição Etária
Crie uma consulta que mostre a distribuição etária dos cidadãos por faixa etária. Quantas pessoas estão em cada faixa etária?

### Tarefa 2: Análise de Doenças por Sexo
Faça uma análise das doenças mais comuns por sexo. Quantos homens e quantas mulheres sofrem de cada doença?

### Tarefa 3: Indicadores por Bairro
Calcule quantas pessoas em cada bairro sofrem de cada uma das doenças. Qual é o bairro com maior número de casos de hipertensão? E de diabetes?

### Tarefa 4: Faixa Etária e Doenças
Crie uma consulta que mostre a distribuição de doenças por faixa etária. Quantas pessoas com 21-40 anos têm diabetes?

### Tarefa 5: Indicadores de Saúde Geral
Com base nas análises anteriores, crie um relatório que indique quais são os principais problemas de saúde na cidade e em quais faixas etárias e bairros eles são mais prevalentes.

### Tarefa 6: Análise de Risco
Considerando as doenças e idades, quais são as faixas etárias mais vulneráveis em cada bairro? Elabore um indicador que permita visualizar essa informação de forma clara.

### Tarefa 7: Relatório Consolidado
Compile todos os resultados das tarefas anteriores em um único relatório, destacando as principais conclusões. Certifique-se de que o relatório esteja bem estruturado e fácil de entender.

## Considerações Finais
Este trabalho foi elaborado para que você aplique os conceitos aprendidos em sala de aula e desenvolva sua capacidade de análise de dados em SQL. Utilize as consultas SQL de forma criativa e busque entender o que os dados revelam sobre a saúde da população.
