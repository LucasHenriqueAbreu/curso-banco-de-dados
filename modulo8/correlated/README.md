# Subconsultas Correlacionadas

Em SQL, uma subconsulta correlacionada é uma subconsulta que utiliza valores da consulta externa em sua cláusula `WHERE`. A subconsulta correlacionada é avaliada uma vez para cada linha processada pela consulta externa. Ela existe porque depende da consulta externa e não pode ser executada de forma independente, pois está correlacionada à consulta externa ao usar suas colunas na cláusula `WHERE`.

Saiba mais nos seguintes recursos:

- [@oficial Subconsultas Correlacionadas](https://dev.mysql.com/doc/refman/8.4/en/correlated-subqueries.html)
- [@vídeo Introdução às Subconsultas](https://www.youtube.com/watch?v=TUxadt94L0M)
