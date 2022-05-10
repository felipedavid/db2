-- Questão 6
SELECT nome, salario, descricao FROM funcionario LEFT JOIN departamento ON (cod_departamento = departamento.codigo);