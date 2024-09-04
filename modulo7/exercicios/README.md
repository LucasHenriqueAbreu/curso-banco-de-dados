
# Lista de Exercícios - Consultas SQL com JOINS

[Script para criação do banco](banco_para_exercicio.sql)

## Contexto do Banco de Dados
Você tem um banco de dados de RPG com personagens, raças, batalhas e resultados de batalhas. Use as tabelas fornecidas (Personagens, Raças, Batalhas, ResultadosBatalhas) para realizar os exercícios abaixo.

## Exercícios

### **Exercício 1: Listagem de Personagens e suas Raças**
**Objetivo:** Exibir todos os personagens com suas respectivas raças.
- **Colunas no relatório:** `NomePersonagem`, `NomeRaca`, `Level`, `Poder`

---

### **Exercício 2: Listagem de Batalhas com os Participantes**
**Objetivo:** Mostrar todas as batalhas realizadas, incluindo o nome dos personagens vencedores e perdedores.
- **Colunas no relatório:** `LocalBatalha`, `DataBatalha`, `NomeVencedor`, `NomePerdedor`

---

### **Exercício 3: Listar Personagens sem Batalhas**
**Objetivo:** Exibir todos os personagens que ainda não participaram de batalhas.
- **Colunas no relatório:** `NomePersonagem`, `Level`, `Poder`, `NomeRaca`

---

### **Exercício 4: Quantidade de Batalhas por Personagem**
**Objetivo:** Contar quantas batalhas cada personagem participou (como vencedor ou perdedor).
- **Colunas no relatório:** `NomePersonagem`, `QtdBatalhas`

---

### **Exercício 5: Vencedores por Local de Batalha**
**Objetivo:** Exibir todos os vencedores de batalhas agrupados por local de batalha.
- **Colunas no relatório:** `LocalBatalha`, `NomeVencedor`

---

### **Exercício 6: Detalhes de Batalhas em que um Personagem Específico Participou**
**Objetivo:** Mostrar todas as batalhas nas quais um personagem específico participou (como vencedor ou perdedor).
- **Colunas no relatório:** `NomePersonagem`, `LocalBatalha`, `Vencedor`, `Perdedor`, `DataBatalha`

---

### **Exercício 7: Raças com Mais Vitórias**
**Objetivo:** Mostrar quais raças têm mais vitórias em batalhas.
- **Colunas no relatório:** `NomeRaca`, `QtdVitorias`

---

### **Exercício 8: Personagens por Raça com o Maior Poder**
**Objetivo:** Listar os personagens de cada raça ordenados pelo maior poder.
- **Colunas no relatório:** `NomeRaca`, `NomePersonagem`, `Poder`

---

### **Exercício 9: Detalhes de Batalhas por Data**
**Objetivo:** Exibir detalhes de todas as batalhas realizadas em uma data específica.
- **Colunas no relatório:** `DataBatalha`, `LocalBatalha`, `NomeVencedor`, `NomePerdedor`

---

### **Exercício 10: Personagens que Nunca Venceram Batalhas**
**Objetivo:** Mostrar todos os personagens que nunca venceram nenhuma batalha.
- **Colunas no relatório:** `NomePersonagem`, `Level`, `NomeRaca`
