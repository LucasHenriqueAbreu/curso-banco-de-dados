
# Trabalho Interdisciplinar de Programação Orientada a Objetos e Introdução a Banco de Dados

## 1. Explicação do Trabalho

O objetivo deste trabalho é desenvolver um sistema de jogo RPG, aplicando os conceitos de Programação Orientada a Objetos (POO) e operações básicas com banco de dados. Os alunos irão criar personagens que podem batalhar entre si, com características específicas, e o resultado das batalhas será registrado no banco de dados.

### Apresentação do Projeto

Cada grupo deverá apresentar o projeto, explicando as etapas de desenvolvimento e demonstrando o funcionamento do sistema. A apresentação deve incluir:

- A explicação sobre a estrutura do código, destacando como os conceitos de POO foram aplicados no desenvolvimento.
- A demonstração das funcionalidades implementadas, como a criação de personagens, batalhas e o registro no banco de dados.
- Exemplos práticos de batalhas entre personagens, ilustrando o fluxo de combate e a lógica utilizada.

Os grupos devem estar preparados para responder a perguntas sobre o código e as escolhas feitas durante o desenvolvimento.

### Data de apresentação
As apresetações irão ocorrer nos dias 25, 26 e 27 de novembro de 2024.

## 2. Linguagem de Programação Sugerida

Recomendamos o uso de Java, pois a disciplina de Programação Orientada a Objetos está utilizando essa linguagem, e os exemplos fornecidos neste enunciado serão em Java. Entretanto, o projeto pode ser feito em outra linguagem, desde que sejam aplicados os conceitos de POO.

## 3. Grupos

- Dividam-se em grupos de até 3 pessoas.
- Cada grupo deverá apresentar o projeto conforme descrito acima.

---

## Explicação do Projeto

### 1. Descrição Detalhada do Projeto

O sistema a ser desenvolvido é um jogo de RPG em que personagens podem batalhar entre si. Cada personagem possui características específicas que afetam o desempenho nas batalhas. O sistema deve incluir:

- **Raça**: Representa o tipo do personagem, como Elfo, Orc, ou Humano, fornecendo bônus adicionais.
- **Arquetipo**: Representa a classe do personagem, como Guerreiro ou Mago, afetando atributos específicos.
- **Personagens**: Cada personagem tem atributos como nome, vida, escudo, poder físico, e poder de habilidade. Cada personagem pertence a uma raça e um arquétipo, que concedem bônus específicos.
- **Batalha**: As batalhas ocorrem entre dois personagens, onde, por turnos, atacam e defendem. O dano é calculado com base nos atributos de ataque do atacante e na defesa do defensor.

Todas essas entidades devem ser salvas em um banco de dados de sua preferência.

### 2. Regras de Negócio da Batalha
- **Início da Batalha**: Dois personagens se revezam para atacar o oponente.
- **Cálculo de Dano**: O dano é a soma do poder físico e poder de habilidade, primeiro absorvido pelo escudo e depois descontado da vida do oponente.
- **Vencedor da Batalha**: O personagem que reduzir a vida do oponente a zero ou menos é declarado o vencedor.

---

## Explicação da Sugestão de Arquitetura

Para organizar o código de forma estruturada, o projeto será dividido em camadas, conforme descrito a seguir:

### 1. Entities (Entidades)

As entidades representam objetos do sistema, com classes como `Raca`, `Arquetipo`, `Personagem`, e `Batalha`. Elas contêm atributos e métodos que descrevem o comportamento do sistema.

### 2. Repository (Repositório)

A camada de repositório lida com operações de persistência, oferecendo métodos para acessar e manipular dados no banco.

### 3. Database (Banco de Dados)

Esta camada gerencia a conexão com o banco de dados, como conectar, executar scripts e desconectar.

---

## Explicação das Etapas de Desenvolvimento

### 1. Criação do Projeto Maven

#### IntelliJ
1. Vá para `File > New > Project`.
2. Selecione `Maven` e clique em `Next`.
3. Defina `GroupId` como `br.edu.unidep` e `ArtifactId` como `rpg`.
4. Clique em `Finish`.

#### Eclipse
1. Vá para `File > New > Maven Project`.
2. Marque a opção `Create a simple project` e clique em `Next`.
3. Defina `GroupId` como `br.edu.unidep` e `ArtifactId` como `rpg`.
4. Clique em `Finish`.

### 2. Configuração do `pom.xml`

```xml
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>
    <groupId>br.edu.unidep</groupId>
    <artifactId>rpg</artifactId>
    <version>1.0-SNAPSHOT</version>

    <properties>
        <maven.compiler.source>21</maven.compiler.source>
        <maven.compiler.target>21</maven.compiler.target>
        <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
    </properties>

    <dependencies>
        <dependency>
            <groupId>mysql</groupId>
            <artifactId>mysql-connector-java</artifactId>
            <version>8.0.30</version>
        </dependency>
    </dependencies>
</project>
```

### 3. Desenvolvimento das Entidades

#### Classe Abstrata Lutador

- **Objetivo**: Representar uma entidade genérica que pode participar de combates.
- **Atributos**: Deve possuir os atributos `nome`, `vida`, `escudo`, `poderFisico`, e `poderHabilidade`. Esses atributos devem ser protegidos, permitindo o acesso por classes que herdem de `Lutador`.
- **Métodos**:
  - **`ataca(Lutador alvo)`**: Método que realiza um ataque em outro `Lutador`, calculando o dano com base nos atributos `poderFisico` e `poderHabilidade` e aplicando-o ao alvo.
  - **`defende(int dano)`**: Método que reduz o dano recebido com base no valor do atributo `escudo`, se disponível, e desconta o restante da vida do lutador.
  - **`isVivo()`**: Método que verifica se o lutador ainda está vivo (se o valor de `vida` é maior que zero).

A criação da classe `Lutador` possibilita a adição futura de novas entidades, como `Monstro`, que podem herdar essa classe, facilitando a manutenção e extensão do sistema.

#### Classe Personagem (Herda de Lutador)

- **Objetivo**: Especializar a classe `Lutador` para representar personagens do jogo, incorporando características específicas.
- **Atributos**:
  - Deve incluir um identificador único (`id`) e as composições `Raca` e `Arquetipo`, que definem as características do personagem.
- **Métodos**:
  - **Construtor**: Deve inicializar os atributos herdados de `Lutador` com os valores fornecidos e configurar a `Raca` e o `Arquetipo` do personagem.

#### Classe Raca

- **Objetivo**: Representar as diferentes raças dos personagens, fornecendo modificadores para os atributos.
- **Atributos**:
  - Deve possuir os atributos `id`, `nome`, e bônus para `vida`, `escudo`, `poderFisico`, e `poderHabilidade`. Esses bônus são aplicados aos personagens que pertencem a essa raça.
- **Métodos**:
  - Métodos para acessar e modificar os atributos. Os bônus devem ser usados para ajustar os atributos do personagem na criação.

#### Classe Arquetipo

- **Objetivo**: Definir os arquétipos dos personagens, que fornecem bônus adicionais para atributos específicos.
- **Atributos**:
  - Deve ter `id`, `nome`, e bônus para `vida`, `escudo`, `poderFisico`, e `poderHabilidade`. Esses bônus serão aplicados além dos fornecidos pela `Raca`.
- **Métodos**:
  - Métodos para acessar e modificar os atributos, assim como métodos para calcular o impacto dos bônus nos atributos do personagem.

#### Classe Batalha

- **Objetivo**: Gerenciar combates entre dois `Lutador`, determinando o vencedor com base nas regras de ataque e defesa.
- **Atributos**:
  - Deve possuir `id`, os dois lutadores participantes (`lutador1` e `lutador2`), e o `vencedor` da batalha.
- **Métodos**:
  - **`iniciar()`**: Executa o combate entre os dois lutadores, alternando ataques até que um deles seja derrotado. O método deve atualizar o atributo `vencedor` com o lutador que vencer a batalha.
  - Métodos para acessar e modificar os atributos, incluindo `lutador1`, `lutador2`, e `vencedor`.

Essas diretrizes ajudam os alunos a entender o papel e a estrutura de cada classe, além de destacar a importância de herança e composição na modelagem orientada a objetos.

Gerencia o combate entre dois `Lutador`, com métodos para iniciar a batalha e retornar o vencedor.

### 5. Configuração da Conexão com o Banco de Dados

Nesta etapa, será implementada a classe `DatabaseConnection` para gerenciar a conexão com o banco de dados. O objetivo é garantir que o banco de dados seja inicializado corretamente e que a aplicação possa se conectar e desconectar de forma segura. 
Exemplo de implementação de `DatabaseConnection` para gerenciar a conexão com o banco de dados:

```java
package database;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

// Classe responsável por gerenciar a conexão com o banco de dados
public class DatabaseConnection {
    // Nome do banco de dados para ser usado depois
    private static final String DATABASE_NAME = "nome do seu banco";
    // URL do banco de dados, com endereço, porta e nome do banco
    private static final String URL = "jdbc:mysql://localhost:3306/";
    // Usuário para acessar o banco de dados
    private static final String USER = "seu_usuario";
    // Senha para acessar o banco de dados
    private static final String PASSWORD = "sua_senha";
    // Variável para garantir que o banco seja inicializado apenas uma vez
    private static boolean databaseInitialized = false;

    // Método para conectar ao banco de dados e inicializar se necessário
    public static Connection conectar() throws SQLException {
        final String fullUrl = databaseInitialized ? URL + DATABASE_NAME : URL;
        System.out.println("Tentando conectar com" + fullUrl);
        // Estabelece a conexão com o banco de dados usando as credenciais fornecidas
        Connection conexao = DriverManager.getConnection(fullUrl, USER, PASSWORD);
        // Verifica se o banco já foi inicializado
        if (!databaseInitialized) {
            // Inicializa o banco de dados, executando o script SQL necessário
            inicializarBancoDeDados(conexao);
            // Marca o banco como inicializado
            databaseInitialized = true;
        }
        // Retorna a conexão estabelecida
        return conexao;
    }

    // Método para inicializar o banco de dados, executando um script SQL
    private static void inicializarBancoDeDados(Connection conexao) {
        try (
            // Lê o arquivo SQL para criar as tabelas e estruturas do banco de dados
            BufferedReader reader = new BufferedReader(new InputStreamReader(
                DatabaseConnection.class.getResourceAsStream("/create_database.sql")));
            // Cria um objeto Statement para executar os comandos SQL
            Statement statement = conexao.createStatement()) {

            // StringBuilder para armazenar os comandos SQL
            StringBuilder sql = new StringBuilder();
            String linha;
            // Lê o arquivo linha por linha
            while ((linha = reader.readLine()) != null) {
                sql.append(linha).append("\n");
                // Executa o comando SQL quando encontra um ponto e vírgula (indicando o fim de um comando)
                if (linha.trim().endsWith(";")) {
                    statement.execute(sql.toString());
                    // Limpa o StringBuilder para o próximo comando
                    sql.setLength(0);
                }
            }
            // Mensagem de sucesso na inicialização do banco
            System.out.println("Banco de dados inicializado com sucesso.");

        } catch (Exception e) {
            // Em caso de erro, imprime o stack trace e uma mensagem de erro
            e.printStackTrace();
            System.err.println("Erro ao inicializar o banco: " + e.getMessage());
        }
    }

    // Método para desconectar do banco de dados
    public static void desconectar(Connection conexao) {
        try {
            // Verifica se a conexão não é nula e se ainda está aberta
            if (conexao != null && !conexao.isClosed()) {
                // Fecha a conexão
                conexao.close();
            }
        } catch (SQLException e) {
            // Em caso de erro ao fechar a conexão, imprime o stack trace
            e.printStackTrace();
        }
    }
}

```

O exemplo de código fornecido para a classe `DatabaseConnection` faz o seguinte:

- **Estabelece uma conexão com o banco de dados**: Usa os dados de URL, usuário e senha para se conectar ao banco. Caso a conexão seja bem-sucedida, o sistema prossegue para a inicialização.
- **Inicializa o banco de dados se necessário**: Se o banco ainda não foi inicializado, ele executa o script SQL para criar as tabelas e outras estruturas necessárias.
- **Desconecta do banco de dados**: Fecha a conexão quando não for mais necessária.

Os alunos devem criar o arquivo `create_database.sql` dentro da pasta `resources` do projeto. Esse arquivo deve conter os comandos para criação do banco de dados e tabelas de acordo com a modelagem do projeto. 

#### Observações Importantes

1. **Uso de `CREATE TABLE IF NOT EXISTS` e `CREATE DATABASE IF NOT EXISTS`**: 
   - Sempre utilize esses comandos para garantir que o banco de dados e as tabelas sejam criados apenas se ainda não existirem. Isso evita erros durante a inicialização quando o projeto é executado várias vezes.

2. **Sugestão para a Estrutura do Banco de Dados**:
   - Embora os alunos tenham liberdade para definir a modelagem, uma sugestão é seguir a estrutura que inclui as tabelas principais do projeto:
     - **Banco de Dados**: Criar o banco com o comando `CREATE DATABASE IF NOT EXISTS rpg;` e utilizar `USE rpg;` para selecionar o banco.
     - **Tabela de Raças**: Incluir uma tabela para definir as raças dos personagens, com colunas como `id`, `nome`, `bonus_vida`, `bonus_escudo`, `bonus_poder_fisico`, e `bonus_poder_habilidade`.
     - **Tabela de Arquétipos**: Criar uma tabela para os arquétipos, com atributos como `id`, `nome`, `bonus_vida`, `bonus_escudo`, `bonus_poder_fisico`, e `bonus_poder_habilidade`.
     - **Tabela de Personagens**: Criar uma tabela para armazenar os personagens, incluindo colunas para `id`, `nome`, `vida`, `escudo`, `poder_fisico`, `poder_habilidade`, além de referências para `raca_id` e `arquetipo_id`.
     - **Tabela de Batalhas**: Criar uma tabela para gerenciar os combates, com colunas para `id`, `lutador1_id`, `lutador2_id`, e `vencedor_id`, que referenciam os personagens.

3. **Importância da Disciplina de Banco de Dados**:
   - Os alunos devem aplicar os conceitos aprendidos na disciplina de banco de dados para projetar as tabelas e os relacionamentos, garantindo uma modelagem que suporte as regras do jogo RPG.
   
Lembre-se de que o exemplo fornecido aqui é uma sugestão e pode ser adaptado conforme as necessidades do projeto.

### 6. Criação dos Repositórios

Nesta etapa, os alunos devem implementar os repositórios para acessar e manipular os dados das entidades no banco de dados. Um repositório é uma classe que fornece métodos para realizar operações de persistência, como salvar, buscar, atualizar e deletar dados, abstraindo a interação direta com o banco de dados.

O exemplo a seguir mostra a implementação de um repositório para a classe `Raca`, com métodos para salvar e recuperar dados do banco de dados. Este repositório deve ser adaptado para as outras entidades do projeto, como `Arquetipo`, `Personagem`, e `Batalha`.
Exemplo de repositório para a classe `Raca`, com métodos para salvar e recuperar dados.

```java
import database.DatabaseConnection;
import entities.Raca;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

// Classe responsável por acessar e manipular os dados da entidade Raca no banco de dados
public class RacaRepository {

    // Método para salvar uma instância de Raca no banco de dados
    public void salvarRaca(Raca raca) {
        // Comando SQL para inserir uma nova raça com os valores especificados
        String sql = "INSERT INTO raca (nome, bonus_vida, bonus_escudo, bonus_poder_fisico, bonus_poder_habilidade) VALUES (?, ?, ?, ?, ?)";

        // Tenta conectar ao banco de dados e preparar a execução do comando SQL
        try (Connection conexao = DatabaseConnection.conectar();
             // Prepara a instrução SQL e especifica que as chaves geradas serão retornadas
             PreparedStatement stmt = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS)) {

            // Define os valores dos parâmetros na instrução SQL
            stmt.setString(1, raca.getNome());
            stmt.setInt(2, raca.getBonusVida());
            stmt.setInt(3, raca.getBonusEscudo());
            stmt.setInt(4, raca.getBonusPoderFisico());
            stmt.setInt(5, raca.getBonusPoderHabilidade());
            // Executa a inserção no banco de dados
            stmt.executeUpdate();

            // Obtém as chaves geradas pelo banco (neste caso, o ID da raça inserida)
            ResultSet generatedKeys = stmt.getGeneratedKeys();
            if (generatedKeys.next()) {
                // Atribui o ID gerado à instância de Raca
                raca.setId(generatedKeys.getInt(1));
            }

            // Mensagem de confirmação de que a raça foi salva com sucesso
            System.out.println("Raça " + raca.getNome() + " salva com ID " + raca.getId());

        } catch (SQLException e) {
            // Em caso de erro, imprime o stack trace para facilitar a identificação do problema
            e.printStackTrace();
        }
    }

    // Método para buscar todas as raças no banco de dados
    public List<Raca> buscarTodasRacas() {
        // Lista para armazenar as raças encontradas
        List<Raca> racas = new ArrayList<>();
        // Comando SQL para selecionar todas as raças
        String sql = "SELECT * FROM raca";

        // Tenta conectar ao banco de dados e executar o comando SQL
        try (Connection conexao = DatabaseConnection.conectar();
             PreparedStatement stmt = conexao.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            // Itera sobre os resultados e cria objetos Raca para cada linha
            while (rs.next()) {
                Raca raca = new Raca();
                raca.setId(rs.getInt("id"));
                raca.setNome(rs.getString("nome"));
                raca.setBonusVida(rs.getInt("bonus_vida"));
                raca.setBonusEscudo(rs.getInt("bonus_escudo"));
                raca.setBonusPoderFisico(rs.getInt("bonus_poder_fisico"));
                raca.setBonusPoderHabilidade(rs.getInt("bonus_poder_habilidade"));
                // Adiciona a raça à lista
                racas.add(raca);
            }

        } catch (SQLException e) {
            // Em caso de erro, imprime o stack trace para facilitar a identificação do problema
            e.printStackTrace();
        }

        // Retorna a lista de raças encontradas
        return racas;
    }

    // Método para buscar uma raça específica pelo ID
    public Raca buscarRacaPorId(int id) {
        // Comando SQL para selecionar a raça pelo ID
        String sql = "SELECT * FROM raca WHERE id = ?";
        Raca raca = null;

        // Tenta conectar ao banco de dados e executar o comando SQL
        try (Connection conexao = DatabaseConnection.conectar();
             PreparedStatement stmt = conexao.prepareStatement(sql)) {

            // Define o valor do parâmetro na instrução SQL
            stmt.setInt(1, id);
            // Executa a consulta e obtém os resultados
            try (ResultSet rs = stmt.executeQuery()) {
                // Verifica se a raça foi encontrada
                if (rs.next()) {
                    raca = new Raca();
                    raca.setId(rs.getInt("id"));
                    raca.setNome(rs.getString("nome"));
                    raca.setBonusVida(rs.getInt("bonus_vida"));
                    raca.setBonusEscudo(rs.getInt("bonus_escudo"));
                    raca.setBonusPoderFisico(rs.getInt("bonus_poder_fisico"));
                    raca.setBonusPoderHabilidade(rs.getInt("bonus_poder_habilidade"));
                }
            }

        } catch (SQLException e) {
            // Em caso de erro, imprime o stack trace para facilitar a identificação do problema
            e.printStackTrace();
        }

        // Retorna a raça encontrada ou null se não existir
        return raca;
    }
}
```

#### Explicação dos Métodos do Exemplo

1. **Método `salvarRaca(Raca raca)`**:
   - O objetivo deste método é inserir uma nova instância de `Raca` no banco de dados.
   - Ele prepara um comando SQL `INSERT` com os valores especificados e tenta executar a inserção.
   - Caso a operação seja bem-sucedida, o ID gerado pelo banco é atribuído à instância de `Raca`, para que ela tenha seu identificador definido.
   - Se ocorrer algum erro durante a execução, o código captura a exceção e exibe o stack trace para facilitar o diagnóstico.

2. **Método `buscarTodasRacas()`**:
   - Este método busca todas as raças registradas no banco de dados.
   - Ele executa um comando SQL `SELECT` para retornar todos os registros da tabela `raca`.
   - Cada registro encontrado é mapeado para um objeto `Raca`, que é adicionado a uma lista de raças. Essa lista é retornada ao final do método.

3. **Método `buscarRacaPorId(int id)`**:
   - Este método busca uma raça específica com base no seu identificador.
   - Ele executa um comando SQL `SELECT` com a cláusula `WHERE` para filtrar a raça pelo `id` informado.
   - Caso um registro correspondente seja encontrado, ele é mapeado para um objeto `Raca` e retornado. Caso contrário, o método retorna `null`.

#### O que os Alunos Devem Fazer

- **Criar Repositórios para Outras Entidades**:
  - Os alunos devem implementar repositórios semelhantes para as outras classes do projeto, como `Arquetipo`, `Personagem`, e `Batalha`.
  - Os repositórios devem conter métodos para as operações básicas de persistência: salvar, buscar, atualizar e deletar.
  
- **Adaptar os Métodos para Cada Entidade**:
  - Cada repositório deve ser ajustado para os atributos e regras específicas da entidade que representa.
  - Por exemplo, ao implementar o repositório para `Personagem`, os métodos devem lidar com os atributos `raca_id` e `arquetipo_id` para referenciar as raças e arquétipos corretamente.

#### Sugestão para Implementação

- **Utilizar os Repositórios em Conjunto com a Conexão ao Banco de Dados**:
  - As operações de persistência nos repositórios devem utilizar a classe `DatabaseConnection` para gerenciar a conexão com o banco de dados.
  - Lembre-se de fechar a conexão sempre que não for mais necessária para evitar problemas de desempenho.

Ao seguir essas diretrizes, os alunos aprenderão a aplicar os conceitos de persistência de dados e encapsulamento na prática, além de desenvolver uma camada de acesso a dados eficiente para o sistema.

### 7. Escrever uma Rotina para o Jogo Acontecer

Nesta etapa, os alunos devem escrever um programa principal para testar a aplicação. O projeto não exige a criação de telas ou rotas; os testes serão realizados diretamente no método `main`, permitindo que os alunos executem o código e verifiquem o funcionamento do sistema. 

#### Objetivo

O objetivo é criar uma rotina que simule o fluxo do jogo, incluindo a criação de personagens, configuração das batalhas e persistência dos dados no banco de dados. A rotina deve incluir operações para salvar e recuperar informações usando os repositórios implementados.

#### Passos para Implementação

1. **Inicializar os Repositórios**
   - Os repositórios para cada entidade (`RacaRepository`, `ArquetipoRepository`, `PersonagemRepository`, `BatalhaRepository`) devem ser instanciados no método `main`.
   - Os repositórios serão usados para salvar, buscar e gerenciar os dados no banco de dados.

2. **Criar e Salvar as Entidades**
   - **Raça**: Criar instâncias de `Raca` e usar o repositório correspondente para salvar no banco de dados.
   - **Arquétipo**: Criar instâncias de `Arquetipo` e salvá-las da mesma forma.
   - **Personagem**: Criar personagens com atributos de raça e arquétipo e salvá-los no banco de dados.
   
3. **Configurar a Batalha**
   - Criar uma instância de `Batalha` que envolva dois personagens e iniciar a batalha.
   - Após a batalha, salvar o resultado no banco de dados para registrar o vencedor e os participantes.

4. **Testar as Operações de Persistência**
   - Verificar se as entidades foram salvas corretamente no banco de dados utilizando os métodos de busca dos repositórios. Por exemplo, buscar todas as raças ou um personagem específico para validar a inserção.
   - Testar os métodos de busca para garantir que os dados são recuperados corretamente do banco de dados.

#### Sugestão de Rotina no Método `main`

- **Passo 1: Inicialização dos Repositórios**
  - Instanciar os repositórios para cada entidade (raça, arquétipo, personagem, batalha).
- **Passo 2: Criação e Persistência das Entidades**
  - Criar uma raça e um arquétipo.
  - Criar dois personagens com os atributos de raça e arquétipo definidos.
  - Persistir essas entidades no banco de dados.
- **Passo 3: Configuração e Execução da Batalha**
  - Configurar uma batalha entre os dois personagens criados e iniciar o combate.
  - Salvar os resultados no banco de dados.
- **Passo 4: Verificação dos Dados Salvos**
  - Utilizar os métodos de busca dos repositórios para verificar se os dados foram salvos corretamente.
  - Exibir no console os resultados das operações para validação visual.

#### Exemplo de Código no Método `main`

```java
package br.edu.unidep;

import br.edu.unidep.entities.Arquetipo;
import br.edu.unidep.entities.Batalha;
import br.edu.unidep.entities.Personagem;
import br.edu.unidep.entities.Raca;
import br.edu.unidep.repositories.ArquetipoRepository;
import br.edu.unidep.repositories.BatalhaRepository;
import br.edu.unidep.repositories.PersonagemRepository;
import br.edu.unidep.repositories.RacaRepository;

public class Main {
    public static void main(String[] args) {
        // Passo 1: Inicialização dos Repositórios
        RacaRepository racaRepo = new RacaRepository();
        ArquetipoRepository arquetipoRepo = new ArquetipoRepository();
        PersonagemRepository personagemRepo = new PersonagemRepository();
        BatalhaRepository batalhaRepo = new BatalhaRepository();

        // Passo 2: Criação e Persistência das Entidades
        Raca elfo = new Raca("Elfo", 10, 5, 2, 8);
        racaRepo.salvarRaca(elfo);
        Arquetipo guerreiro = new Arquetipo("Guerreiro", 20, 10, 7, 3);
        arquetipoRepo.salvarArquetipo(guerreiro);
        Personagem legolas = new Personagem("Legolas", 100, 50, 15, 10, elfo, guerreiro);
        personagemRepo.salvarPersonagem(legolas);
        Personagem grom = new Personagem("Grom", 120, 80, 20, 5, elfo, guerreiro);
        personagemRepo.salvarPersonagem(grom);

        // Passo 3: Configuração e Execução da Batalha
        Batalha batalha = new Batalha(legolas, grom);
        batalha.iniciar();
        batalhaRepo.salvarBatalha(batalha);

        // Passo 4: Verificação dos Dados Salvos
        System.out.println("Raças salvas: " + racaRepo.buscarTodasRacas());
        System.out.println("Personagens salvos: " + personagemRepo.buscarTodosPersonagens());
        System.out.println("Batalhas registradas: " + batalhaRepo.buscarTodasBatalhas());
    }
}

```
Observações: Certifique-se de que os testes de persistência sejam executados em um banco de dados de teste para evitar alterações indesejadas nos dados de produção.


### Conclusão

Com essas etapas concluídas, o projeto agora conta com uma estrutura básica para gerenciar personagens, arquétipos, raças e batalhas em um jogo RPG. Vocês aprenderam a aplicar conceitos de Programação Orientada a Objetos, persistência de dados e testes de funcionalidades, criando um sistema que simula o fluxo de um jogo.

Lembrem-se de que este trabalho é uma oportunidade de colocar em prática os conhecimentos adquiridos em sala de aula. Aproveitem para explorar diferentes cenários, testar novas funcionalidades e ajustar a modelagem do projeto conforme necessário. Não tenham medo de errar, pois é assim que aprendemos e evoluímos.

Boa sorte na implementação! Espero que vocês se divirtam e aproveitem essa experiência para expandir suas habilidades. E lembrem-se, o código também pode ser uma forma de arte – usem a criatividade para construir algo de que se orgulhem.

Divirtam-se e bom trabalho!