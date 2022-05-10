-- Questão 14
DROP VIEW IF EXISTS func_atv;
CREATE VIEW func_atv AS
SELECT nome FROM funcionario WHERE codigo in (select cod_responsavel from atividade);
select * from func_atv;