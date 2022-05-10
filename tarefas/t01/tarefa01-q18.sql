-- Questão 18
SELECT f.nome, d.nome FROM funcionario f 
	LEFT JOIN departamento d ON f.cod_departamento = d.codigo 
	WHERE f.salario = (SELECT MAX(salario) FROM funcionario WHERE cod_departamento = f.cod_departamento);