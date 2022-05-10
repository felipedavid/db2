-- Questão 12
SELECT 
	p.nome nome_prj, 
	p.data_inicio data_inicio_prj, 
	p.data_fim data_fim_prj, 
	a.descricao descricao_atv, 
	a.data_inicio data_inicio_atv, 
	a.data_fim data_fim_atv 
FROM projeto p
JOIN atividade_projeto ap ON ap.cod_projeto = p.codigo
JOIN atividade a ON ap.cod_atividade = a.codigo;