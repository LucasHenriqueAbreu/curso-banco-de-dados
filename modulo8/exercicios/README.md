# Exercícios: Subconsultas, Subconsultas Aninhadas e Subconsultas Correlacionadas

## Exercício 1: Subconsulta Simples no `WHERE`
Liste todos os personagens que têm um poder superior à média de poder de todos os personagens.

- **Colunas esperadas no resultado**: `nomepersonagem`, `poder`

---

## Exercício 2: Subconsulta Aninhada no `WHERE`
Liste os personagens cujo nível é maior que a média de nível dos personagens da raça "Orc".

- **Colunas esperadas no resultado**: `nomepersonagem`, `level`

---

## Exercício 3: Subconsulta Aninhada no `FROM`
Mostre o nome dos personagens e a diferença entre o nível do personagem e a média de nível de todos os personagens.

- **Colunas esperadas no resultado**: `nomepersonagem`, `level`, `diferenca_nivel`

---

## Exercício 4: Subconsulta Correlacionada no `WHERE`
Liste todos os personagens que têm um poder maior do que o poder médio dos personagens da mesma raça.

- **Colunas esperadas no resultado**: `nomepersonagem`, `poder`

---

## Exercício 5: Subconsulta Correlacionada no `FROM`
Liste as raças e a média de poder dos personagens cujo poder é superior à média de poder de sua própria raça.

- **Colunas esperadas no resultado**: `nomeraca`, `mediapoder_acima_da_media`

---

## Exercício 6: Subconsulta no `HAVING`
Liste as raças que têm uma média de nível superior ao nível médio de todos os personagens.

- **Colunas esperadas no resultado**: `nomeraca`, `nivel_medio`

---

## Exercício 7: Subconsulta Correlacionada no `SELECT`
Mostre o nome dos personagens e a média de poder dos personagens da mesma raça.

- **Colunas esperadas no resultado**: `nomepersonagem`, `mediapoder_raca`

---

## Exercício 8: Subconsulta Aninhada no `WHERE`
Liste os personagens cujo nível é superior à média dos personagens da raça "Elfo", mas que tenham um poder inferior à média dos personagens da raça "Humano".

- **Colunas esperadas no resultado**: `nomepersonagem`, `level`, `poder`

---

## Exercício 9: Subconsulta Simples no `SELECT`
Mostre o nome dos personagens e a média de poder de todos os personagens.

- **Colunas esperadas no resultado**: `nomepersonagem`, `mediapoder`

---

## Exercício 10: Subconsulta Correlacionada no `HAVING`
Liste as raças que possuem uma média de nível superior à média de nível de personagens de todas as outras raças.

- **Colunas esperadas no resultado**: `nomeraca`, `nivel_medio`