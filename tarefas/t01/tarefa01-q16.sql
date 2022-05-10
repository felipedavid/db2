-- Questão 16
select f.nome from funcionario f where (
	f.codigo in (select cod_responsavel from projeto) and
	f.codigo in (select cod_gerente from departamento)
) or (f.salario > (select salario from funcionario where codigo = 
	(select cod_gerente from departamento where f.cod_departamento = codigo)));