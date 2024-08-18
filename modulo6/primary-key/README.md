# Chave Primária

Uma chave primária é um campo especial em uma tabela de banco de dados relacional (ou uma combinação de campos) designado para identificar de forma única todos os registros da tabela.

As principais características de uma chave primária são:

- Ela deve conter um valor único para cada linha de dados.
- Ela não pode conter valores nulos.

## Uso da Chave Primária

Você define uma chave primária para uma tabela usando a restrição `PRIMARY KEY`. Uma tabela pode ter apenas uma chave primária. Você pode definir uma chave primária em SQL quando cria ou modifica uma tabela.

## Criar Tabela com Chave Primária

Em SQL, você pode criar uma tabela com uma chave primária usando a sintaxe `CREATE TABLE`.

```sql
CREATE TABLE Funcionarios (
    ID INT PRIMARY KEY,
    NOME TEXT,
    IDADE INT,
    ENDERECO CHAR(50)
);
```

Neste exemplo, `ID` é a chave primária que deve consistir em valores únicos e não pode ser nula.

## Modificar Tabela para Adicionar Chave Primária

Se você quiser adicionar uma chave primária a uma tabela existente, pode usar a sintaxe `ALTER TABLE`.

```sql
ALTER TABLE Funcionarios
ADD PRIMARY KEY (ID);
```

Isso adicionará uma chave primária à coluna `ID` na tabela `Funcionarios`.

## Chave Primária Composta

Também podemos usar múltiplas colunas para definir uma chave primária. Esse tipo de chave é conhecido como chave composta.

```sql
CREATE TABLE Clientes (
    ClienteID INT,
    LojaID INT,
    CONSTRAINT pk_ClienteID_LojaID PRIMARY KEY (ClienteID, LojaID)
);
```

Nesse caso, cada combinação de `ClienteID` e `LojaID` deve ser única em toda a tabela.
