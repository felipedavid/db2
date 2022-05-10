-- Questão 8
SELECT 
	d.nome as nome_departamento, 
	(select nome from funcionario where codigo = d.cod_gerente) as nome_gerente, 
	(select COUNT(*) FROM projeto WHERE cod_depto = d.codigo) as n_projetos 
FROM departamento as d;