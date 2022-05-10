-- Questão 4
SELECT nome, salario, cod_departamento FROM funcionario WHERE codigo NOT IN (SELECT cod_gerente FROM departamento);