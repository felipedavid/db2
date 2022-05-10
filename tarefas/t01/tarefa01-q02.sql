-- Questão 2
SELECT * FROM funcionario WHERE dt_nasc != (SELECT MIN(dt_nasc) FROM funcionario);