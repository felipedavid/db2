-- Questão 10
SELECT p.nome as nome_projeto,
	(select nome from departamento where codigo = p.cod_depto) as nome_departamento,
	(select nome from funcionario where codigo = p.cod_responsavel) as nome_responsavel
from projeto as p;